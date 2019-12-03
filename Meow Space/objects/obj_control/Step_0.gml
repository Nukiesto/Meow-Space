/// @description WINDOW CAPTION

with(obj_resolution) window_set_caption("Windowed: "+string(res_list[cur_res_id,0])+" x "+string(res_list[cur_res_id,1]));

///BACKGROUND POSITION

__background_set( e__BG.Y, 0, vy );
__background_set( e__BG.Y, 1, vy+vh-__background_get( e__BG.Height, 1 ) );

