/// @description Insert description here

if (distance_to_object(objPlayer) < distance_to_touch) {
	draw_sprite(sprite_index, -1, (mouse_x div 32) * 32, (mouse_y div 32) * 32);
	if (keyboard_check(vk_space)) {	
		//var _itemDefIndex  = objInvManager.inventory[objInvManager.select];
		//var _itemInventory = objInvManager.inventory[_itemDefIndex];
		//var _object        = objInvManager.inv_Definitions[_itemInventory, ItemProperties.name];
		//draw_sprite(_object.sprite_index, -1, x, y);
		//draw_text(x, y, string(object_get_name(_object)));
	}
}

