/// @desc Add item
/// @param type
/// @param sprite
/// @param name
/// @param amount
/// @param script
/// @param blockObj
var _typeOfItem = argument0;

var _sprite     = argument1;
var _name       = argument2;
var _maxNumber  = argument3;
var _useScript  = argument4;
var _blockObj   = argument5;

inv_Definitions[_typeOfItem, ItemProperties.sprite] = _sprite;
inv_Definitions[_typeOfItem, ItemProperties.name] = _name;
inv_Definitions[_typeOfItem, ItemProperties.amount] = _maxNumber;
inv_Definitions[_typeOfItem, ItemProperties.useScript] = _useScript;
inv_Definitions[_typeOfItem, ItemProperties.blockObj] = _blockObj;
if !(_blockObj = noone) {
	blockDef[_blockObj] = _typeOfItem;
}