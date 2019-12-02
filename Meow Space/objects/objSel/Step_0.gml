/// @description Insert description here

x = (mouse_x div 32) * 32; 
y = (mouse_y div 32) * 32;

#region Destroy					
if (mouse_check_button(mb_left)) {
	if (distance_to_object(objPlayer) < distance_to_touch) and !(place_free(x, y)) {		
		if (place_meeting(x, y, objBlockPar)) {		
			if (!instance_place(x, y, objBlockBedrock)){			
				var _other = instance_nearest(x, y, objBlockPar);			
				var _str1 = ItemType.BlockSand;
				//"ItemType." + string_replace(object_get_name(_other.blockIndex), "obj", "");
				var _otherX = _other.x;
				var _otherY = _other.y;
				with (objInvManager) {				
					var _object = inv_Definitions[_str1, ItemProperties.blockObj];										
				}
				ds_grid_set(objGenerator.idBlock, x / 32, y /32, -1);
					ds_grid_set(objGenerator.frontWorld, x / 32, y / 32, -1);
					if (confOptimizing){
						ds_grid_set(objController.frontWorldLight, x / 32, y / 32, 0);
					}							
				if (array_find_index(ItemType.BlockSand, _other) == -1) {
					if (_other = _object) {
						with (objInvManager) {
							instance_create_item(_otherX, _otherY, ItemType.BlockSand);
						}
					}
				}
				instance_create_item(_otherX, _otherY, ItemType.BlockSand);
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
			var _itemDefIndex  = inventory[select];
			var _object        = inv_Definitions[_itemDefIndex, ItemProperties.blockObj];
		}		
		if (_itemDefIndex != ItemType.none) {
			var _idBlok;
			_idBlok = instance_create_depth(
				x, y, 0, //objBlockDirt
				_object
				);	
			//instance_create_depth(x , y, 0, objBlockDirt);
			ds_grid_set(objGenerator.idBlock, x / 32, y /32, _idBlok); 
			ds_grid_set(objGenerator.frontWorld, x / 32, y / 32, _object);	
			with (objInvManager) {
				inv_RemoveItem(_itemDefIndex);
			}
			if (confOptimizing){
				ds_grid_set(objController.frontWorldLight, x / 32, y / 32, 1);
			}			
		}
	} 
}
#endregion