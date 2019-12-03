/// @description DRAWING

//TITLE
draw_sprite(spr_title,0,vx+vw/2,vy+vh/3);

//RESOLUTION TEXT
if window_get_fullscreen()
var txt = "N / A";
else
var txt = string(obj_resolution.res_list[res_selected,0])+" x "+string(obj_resolution.res_list[res_selected,1]);

draw_set_colour(c_black);
draw_text(vx+vw/2+25+1,vy+vh-vh/1.9-2+1,string_hash_to_newline(txt));
draw_set_colour(c_white);
draw_text(vx+vw/2+25,vy+vh-vh/1.9-2,string_hash_to_newline(txt));

