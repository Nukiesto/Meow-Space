///@description Рисование мира
//if (finish) {
	//if !(file_exists(working_directory + "Data\Temp\_" + string(fname))) {
var x1 = camera_get_view_x(camera) div 16;
var y1 = camera_get_view_y(camera) div 16;
var x2 = x1 + (1024 / 32) + 1;
var y2 = y1 + (768 / 32) + 1;

//Рисование блоков
#region Цикл
var block;
for(var xx = x1; xx < x2; xx++){
	for(var yy = y1; yy < y2; yy++){
		
		block = front_world[# xx, yy];
		if(block){//Если есть передний блок
			//Рисуем его
			draw_sprite(block.sprite_index, 0, xx * 32, yy * 32);
		} else {//Иначе
			//Проверяем наличие блока, но на заднем фоне
			block = back_world[# xx, yy];
			//Если он есть, то рисуем его наполовину затемненным
			if(block) draw_sprite_ext(block.sprite_index, 0, xx * 32, yy * 32, 1, 1, 0, c_gray, 1);
		}
	}
}
#endregion
//Создаём сурфейс если он вдруг пропал
if(!surface_exists(light_surface)) light_surface = surface_create((camera_get_view_width(camera) div 32) + 2, (camera_get_view_height(camera) div 32) + 2);
#region Цикл
surface_set_target(light_surface);
draw_clear(c_black);

gpu_set_blendmode(bm_subtract);
var front_block, back_block;
for(var xx = x1; xx < x2; xx++){
	for(var yy = y1; yy < y2; yy++){
		
		front_block = front_world[# xx, yy];
		back_block = back_world[# xx, yy];				
		draw_sprite_ext(sprLight, 0, xx - x1, yy - y1, 1, 1, 0, c_white, 0.5);
					
		if(front_block or back_block) continue;
		
		//draw_sprite(sprLight, 0, xx - x1, yy - y1);
	}
}
gpu_set_blendmode(bm_normal);
surface_reset_target();
#endregion
gpu_set_tex_filter(true);
draw_surface_ext(light_surface, x1 * 32, y1 * 32, 32, 32, 0, c_white, 1);
gpu_set_tex_filter(false);
				//spriteBack = sprite_add_from_screen(fname);								
				//alarm[0] = 1;
	//} else {
		//draw_sprite(spriteBack, -1, 0,0);
	//}
//}