
var _array = argument0;
var _oldVal = argument1;
var _newVal = argument2;
var _indexToReplaceAt = array_find_index(_array, _oldVal);

if (_indexToReplaceAt == -1) {
	return -1;	
}

_array[@ _indexToReplaceAt] = _newVal;
