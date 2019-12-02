/// @param x
/// @param y
/// @param type

var _x = argument0;
var _y = argument1;
var _type = argument2;
var _object = objItem;
if (array_find_index(objInvManager.inventory, _type) == -1) {
	array_replace_value(objInvManager.inventory, ItemType.none, _type);	
}
var _objectIndex = instance_create_depth(_x, _y, -1, _object);
with (objInvManager) {
	var _sprite = inv_Definitions[_type, ItemProperties.sprite];
}
with (_objectIndex) {
	LocalItemType  = _type;
	sprite_index   = _sprite;
	image_xscale   = 0.5;
	image_yscale   = 0.5;
}
