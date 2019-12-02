
var _type = argument0;
var indexAddedAt = -2;

if (array_find_index(objInvManager.inventory, _type) == -1) {
	indexAddedAt = array_replace_value(objInvManager.inventory, ItemType.none, _type);	
}

if (indexAddedAt != -1) 
	objInvManager.inv_Definitions[_type, ItemProperties.amount] +=1;	

return (indexAddedAt != -1);