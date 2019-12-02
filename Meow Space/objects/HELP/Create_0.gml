/// @description HELP
/*

 - To change the windowed resolution, call the resolution_set() script and pass it an ID from the list below.

 - To switch between fullscreen and windowed mode, call the resolution_switch() script.

 - To start in fullscreen mode by default, uncomment the resolution_switch() script in the create event of obj_resolution.

 - Make sure that rm_init is the first room in your game and that it contains an instance of obj_resolution.

 - Make sure that all of your rooms have views enabled.
 
 - When drawing menu and HUD elements, make sure to draw them relative to the view (don't use the draw GUI event).


//RESOLUTION IDs
----------------
0 = 800 x 600
1 = 1024 x 768
2 = 1152 x 648
3 = 1152 x 720
4 = 1152 x 864
5 = 1280 x 720
6 = 1280 x 768
7 = 1280 x 800
8 = 1280 x 960
9 = 1280 x 1024
10 = 1360 x 768
11 = 1366 x 768
12 = 1440 x 900
13 = 1600 x 900
14 = 1600 x 1024
15 = 1680 x 1050
16 = 1920 x 1080

*You can alter this list in the create event of obj_resolution if you so desire.

/* */
/*  */
