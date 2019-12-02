/// @param fname

var _fname = working_directory + "Data\Temp\_" + string(argument0);//working_directory + "Screens\Screen_" + string(num++) + ".png"
screen_save(_fname);
return sprite_add(_fname, 1, 0, 0, 0, 0);