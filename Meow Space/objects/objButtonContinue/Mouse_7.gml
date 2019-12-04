
event_inherited();
roomType = "game";
room = rmMain;
world_load(1);
with (objController) {
	instance_create_depth(room_width/2, 0, 0, objPlayer);
	camera_set_view_pos(camera, objPlayer.x-camera_get_view_width(camera)/2, objPlayer.y-camera_get_view_height(camera)/2);
}