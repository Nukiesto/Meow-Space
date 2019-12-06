/// @params x
/// @params y
/// @params Type


with (objInvManager) {	
	var _itemDefIndex  = argument2;
	var _object        = inv_Definitions[_itemDefIndex, ItemProperties.blockObj];
}		
if (_itemDefIndex != ItemType.none) {
	var _x = argument0;
	var _y = argument1;
	var _idBlok = instance_create_depth(_x, _y, 0, _object);	
	ds_grid_set(objGenerator.idBlock, _x / 32, _y /32, _idBlok); 
	ds_grid_set(objGenerator.frontWorld, _x / 32, _y / 32, _object);		
	if (confOptimizing){
		ds_grid_set(objController.frontWorldLight, _x / 32, _y / 32, 1);
	}	
	return instance_exists(_idBlok);
}