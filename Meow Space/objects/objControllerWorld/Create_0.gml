/// @description Insert description here

camera = view_camera[0];

canCameraMoveToSpawn = 1;

spawnX = room_width/2;
spawnY = 14;

camera_set_view_pos(camera, spawnX - camera_get_view_width(camera)/2, spawnY - camera_get_view_height(camera)/2);