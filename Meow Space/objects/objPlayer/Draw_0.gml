/*
var dir,xx;
dir=point_direction(x,y,mouse_x,mouse_y);
if (dir>90)&&(dir<270){
	xx=-1;	
}else{
	xx=1;
}
draw_sprite_ext(sprPlayerBody,1,x,y,1,1,0,c_white,1);
draw_sprite_ext(sprPlayerHead,1,x,y-16,1,xx,0,c_white,1);