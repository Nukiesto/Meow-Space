///CREATE RESOLUTION BUTTONS

var b = instance_create(0,0,obj_option_arrow); b.sprite_index = spr_arrow_left;
b = instance_create(0,0,obj_option_arrow); b.sprite_index = spr_arrow_right;
instance_create(0,0,obj_apply);
instance_create(0,0,obj_fullscreen);

///MISC

globalvar vx,vy,vw,vh;
res_selected = obj_resolution.cur_res_id;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_main);
draw_set_colour(c_white);

