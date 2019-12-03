/// @description POSITION && IMAGE

x = vx+vw/2+120;
y = vy+vh-vh/1.9;

///IMAGE INDEX

if window_get_fullscreen() || obj_control.res_selected = obj_resolution.cur_res_id
image_index = 2;
else
if position_meeting(mouse_x,mouse_y,id)
image_index = 1;
else
image_index = 0;

