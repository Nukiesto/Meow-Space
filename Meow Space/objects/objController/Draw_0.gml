///@description 

#region Рисование мира

	if (roomType=="game")
	{
		var temp=gpu_get_tex_mip_filter();
		if (temp=!tf_linear)
		{		
			gpu_set_tex_mip_filter(tf_linear);
		}
		#region Var
		var x1 = camera_get_view_x(camera) div 32;
		var y1 = camera_get_view_y(camera) div 32;
		var x2 = x1 + (1024 / 32) + 1;
		var y2 = y1 + (768 / 32) + 1;
		#endregion
		#region Рисование блоков
		var block;
		for(var xx = x1; xx < x2; xx++){
			for(var yy = y1; yy < y2; yy++){
				block = objGenerator.frontWorld[# xx, yy];
				if(block){//Если есть передний блок
					//Рисуем его
					if (ds_grid_get(frontWorldLight,xx,yy)){
						if (block==objBlockDirt){					
							draw_sprite(block.sprite_index, objGenerator.idBlock[# xx, yy].image, xx * 32, yy * 32);	
							}else{
							draw_sprite(block.sprite_index, 0, xx * 32, yy * 32);
						}
					}
				} else {//Иначе
					if (ds_grid_get(backWorldLight,xx,yy)){
						//Проверяем наличие блока, но на заднем фоне
						block = objGenerator.backWorld[# xx, yy];
						//Если он есть, то рисуем его наполовину затемненным
						if(block) draw_sprite_ext(block.sprite_index, 0, xx * 32, yy * 32, 1, 1, 0, c_gray, 1);
					}						
				}
				with (objPlayerHandWeapon) {
					//draw_sprite_ext(sprite_index, -1, x, y, 1, 1, angle, c_white, 1);
				}
				with (objPlayerWeapon) {
				    //draw_sprite_ext(sprite_index, -1, x, y, scale, yscale, angle, c_white, 1);
				}
				if (instance_exists(objPlayer)) {
					if (instance_exists(objPlayerPart))      then draw_sprite(objPlayerPart.sprite_index, 0,objPlayerPart.x,objPlayerPart.y);
				}
				//if (instance_exists(objPlayerWeapon))      then draw_sprite(objPlayerWeapon.sprite_index, 0,objPlayerWeapon.x,objPlayerWeapon.y);
				//if (instance_exists(objPlayerHandWeapon))then draw_sprite(objPlayerHandWeapon.sprite_index, 0,objPlayerHandWeapon.x,objPlayerHandWeapon.y);
			}
		}
		#endregion	
		#region Рисование освещения
		//Создаём сурфейс если он вдруг пропал
		if(!surface_exists(lightSurface)) lightSurface = surface_create((camera_get_view_width(camera) div 32) + 2, (camera_get_view_height(camera) div 32) + 2);

		surface_set_target(lightSurface);
		draw_clear(c_black);

		gpu_set_blendmode(bm_subtract);
		var front_block, back_block;
		for(var xx = x1; xx < x2; xx++){
			for(var yy = y1; yy < y2; yy++){
		
				front_block = objGenerator.frontWorld[# xx, yy];
				back_block = objGenerator.backWorld[# xx, yy];	
				if (confOptimizing) {
					if (!front_block) {
				
							ds_grid_set(frontWorldLight,xx,yy,1);							
					}
					if (back_block) {
							ds_grid_set(backWorldLight,xx,yy,1);			
					}
				}
				if(!front_block and back_block){
					draw_sprite_ext(sprLight, 0, xx - x1, yy - y1, 1, 1, 0, c_white, 0.5);			
					continue;		
				}			
			
				//if(!front_block and back_block){
				//	if (confOptimizing){
				//		ds_grid_set(frontWorldLight,xx,yy,1);
				//	}
				//	draw_sprite_ext(sprLight, 0, xx - x1, yy - y1, 1, 1, 0, c_white, 0.5);			
				//	continue;
				//}
		
				if(back_block or front_block)continue//frontWorldLight
				draw_sprite(sprLight, 0, xx - x1, yy - y1);
				if (confOptimizing){
					ds_grid_set(frontWorldLight,xx,yy,0);
					ds_grid_set(backWorldLight,xx,yy,0);
				}
			}
		}
		if (instance_exists(objPlayer)) {
			draw_sprite_ext(sprLight, 0, objPlayer.x, objPlayer.y, 4, 4, 0, c_white, 0.5);
		}
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
		gpu_set_tex_filter(true);
		draw_surface_ext(lightSurface, x1 * 32, y1 * 32, 32, 32, 0, c_white, 1);
		gpu_set_tex_filter(false);
		#endregion
		gpu_set_tex_mip_filter(temp);
	}

#endregion