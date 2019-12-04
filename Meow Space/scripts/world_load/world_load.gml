/// @param slot(1..5)

var _worldSlot = argument0;
var _path      = working_directory+"Worlds\World"+string(_worldSlot)+".save";
if (file_exists(_path)) {
	game_load(_path);
}
