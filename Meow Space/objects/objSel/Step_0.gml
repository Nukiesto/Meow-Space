/// @description Insert description here

x = (mouse_x div 32) * 32; 
y = (mouse_y div 32) * 32;

#region Destroy					
if (mouse_check_button(mb_left)) {
	if (distance_to_object(objPlayer) < distance_to_touch) and !(place_free(x, y)) {		
		if (place_meeting(x, y, objBlockPar)) {		
			if (!instance_place(x, y, objBlockBedrock)){			
				
				var _other  = instance_nearest(x, y, objBlockPar);	
				var _object = _other.blockIndex;	
				var _type = inv_get_block_type(_object);
				var _otherX = _other.x;
				var _otherY = _other.y;
				ds_grid_set(objGenerator.idBlock, x / 32, y /32, -1);
				ds_grid_set(objGenerator.frontWorld, x / 32, y / 32, -1);
				if (confOptimizing){
					ds_grid_set(objController.frontWorldLight, x / 32, y / 32, 0);
				}											
				instance_create_item(_otherX, _otherY, _type);
				with (_other) {				
					instance_destroy();					
				}
			}
		}
	}
}
#endregion
#region Place
if (mouse_check_button_pressed(mb_right)) {
	if (distance_to_object(objPlayer) < distance_to_touch) and (place_free(x, y)) and !(instance_position(x + 16, y + 16, objPlayer)) and !(place_meeting(x, y, all)) {
		with (objInvManager) {
			instance_create_block(x, y, inventory[select]);
			if (instance_create_block(x, y, inventory[select])) 
				inv_RemoveItem(inventory[select]);
		}					
	} 
}
#endregion