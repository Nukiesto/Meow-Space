/// @description POSITION

x = vx+vw/2-25+100*(sprite_index = spr_arrow_right);
y = vy+vh-vh/1.9;

///IMAGE INDEX

if window_get_fullscreen()
image_index = 2;
else
if position_meeting(mouse_x,mouse_y,id)
image_index = 1;
else
image_index = 0;

