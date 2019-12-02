
var _type = argument0;
var _itemScript = objInvManager.inv_Definitions[_type, ItemProperties.useScript];
//objInvManager.inv_Definitions[_type, ItemProperties.useScript];
//inv_GetProperty(ItemType.test1, ItemProperties.useScript);

script_execute(_itemScript);
inv_RemoveItem(_type);