if (debugMode){
	var temp = gpu_get_tex_mip_filter();
	if (temp != tf_linear)
	{		
		gpu_set_tex_mip_filter(tf_linear);
	}
	draw_set_color(c_white);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(4,4,"FPS: "+string(fps)+"/30");
	if (instance_exists(objPlayer)){
		draw_text(4,4+15,"X: "+string(objPlayer.x div 32));
		draw_text(4,4+((15)*2)+4,"Y: "+string(objPlayer.y div 32));
		draw_text(4,4+((15)*3)+(4*2),""+string(confOptimizing));
	}
	//draw_text(4,4+((15)*3)+(4*2),"v. "+string(GM_version));
	draw_set_halign(fa_right);
	draw_text(camera_get_view_width(camera)-4,4,"v."+string(GM_version));
	draw_text(camera_get_view_width(camera)-4,4+15,"Data Build: "+string(GM_build_date));
	gpu_set_tex_mip_filter(temp);
}
