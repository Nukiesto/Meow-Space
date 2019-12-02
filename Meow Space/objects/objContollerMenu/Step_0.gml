if (roomTypeTemp!=roomType){
	var i = -1;var j=0;var a;
	a = instance_create_depth(0,0,0,objButtonPar);
	while(object_exists(++i)) if(object_get_parent(i) == objButtonPar){
		var b;
		j += 1;b = instance_create_depth(room_width/2,128+(objButtonPar.sprite_height*j)+(8*j), 0, i);
		if (b.roomTypeButton != roomType){
			j -= 1;
			instance_destroy(i);
		}	
	}
	instance_destroy(a);
	roomTypeTemp = roomType;	
}