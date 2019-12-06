
var __object = argument0;

with (objInvManager) {
	var __type = objInvManager.blockDef[__object];
	var _blockObjDrop = inv_Definitions[__type, ItemProperties.blockObjDrop];
	if (_blockObjDrop = !noone) {
		return blockDef[_blockObjDrop];
	} else {
		return __type;
	}
}
