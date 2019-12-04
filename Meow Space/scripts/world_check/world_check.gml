/// @param slot(1..5)

var _worldSlot = argument0;
var _path      = working_directory+"Worlds\World"+string(_worldSlot)+".save";

return (file_exists(_path));
