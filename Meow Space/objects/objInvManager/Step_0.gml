/// @description Insert description here

if (mouse_wheel_up()) {
	select += 1;
	if (select > MAX_ACTIVE_INV_ITEMS-1) 
		select = MAX_ACTIVE_INV_ITEMS-1;
	if (inventory[select] != -1) {
		selectBlock = inventory[select];
	} else {
		selectBlock = -1;
	}
}
if (mouse_wheel_down()) {
	select -= 1;
	if (select < 0) 
		select = 0;
	selectBlock = inventory[select]; 
}

for (var i = 0; i < MAX_ACTIVE_INV_ITEMS; ++i) {
	if (keyboard_check_pressed(ord(string(i)))) {
		var _itemType = inventory[i - 1];
		if (select = i)	{			
			inv_UseItem(_itemType);	
		}
		select = i-1;		
	}
}

