
var _type = argument0;

var _indexOfGivenType = array_find_index(inventory, _type);

if (_indexOfGivenType != -1) {
	inv_Definitions[_type, ItemProperties.amount] -= 1;  
	
	if (inv_Definitions[_type,ItemProperties.amount] <= 0) 
		inventory[_indexOfGivenType] = ItemType.none;
}