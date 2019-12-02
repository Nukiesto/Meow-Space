var temp=gpu_get_tex_mip_filter();
if (temp=!tf_linear)
{		
	gpu_set_tex_mip_filter(tf_linear);
}
draw_self();
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y+(sprite_height/2)-2,string(str));
gpu_set_tex_mip_filter(temp);