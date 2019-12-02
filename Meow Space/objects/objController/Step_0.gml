//display_set_gui_size(display_get_width() / 4, display_get_height() / 4);
if ((window_get_width()=!1024)&&(window_get_height()=!768)){	
	display_set_gui_size(window_get_width(), window_get_height());
	//window_set_max_width(1024);
	//window_set_max_height(768);	
}
if (keyboard_check_pressed(vk_f1)) then debugMode=!debugMode;
if (keyboard_check_pressed(vk_escape)) {
	instance_destroy(objGenerator);
	ds_grid_set_region(frontWorldLight,0,0,worldWidth,worldHeight,1);
	roomType = "menu";room = rmMenu;
}
//camera_set_view_speed(camera,objPlayer.speed,objPlayer.speed);
if (roomType=="game"){
	#region Optimizing
	//if (!confOptimizing)
	if (2 = 1) {
		instance_deactivate_region(camera_get_view_x(camera),camera_get_view_y(camera),camera_get_view_x(camera)+1024,camera_get_view_y(camera)+768,0,1);
		instance_activate_region(camera_get_view_x(camera)-128,camera_get_view_y(camera)-128,camera_get_view_x(camera)+1100,camera_get_view_y(camera)+1100,1);
		instance_activate_object(objSel);
		instance_activate_object(objGenerator);
		instance_activate_object(objPlayer);
		instance_activate_object(objControllerNight);
		instance_activate_object(objInvManager);
	}
	#endregion
}
//instance_deactivate_object(objBlockDirt);
