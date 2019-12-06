///@description Initialize
#macro GRAVITY_INVARIABLE 0.0075
#macro distance_to_touch (32*4)

nick = random_nickname(6, 8, 1);
draw_set_font(fontMain);

gpu_set_tex_mip_enable(mip_on);
//Записываем ID камеры 0 вида
camera = view_camera[0];


debugMode=0;

canCreatePlayer = 0;

//Создаём сурфейс
lightSurface = surface_create((camera_get_view_width(camera) div 16) + 2, (camera_get_view_height(camera) div 16) + 2);

frontWorldLight = ds_grid_create(worldWidth, worldHeight);
backWorldLight = ds_grid_create(worldWidth, worldHeight);

ds_grid_set_region(frontWorldLight,0, 0,worldWidth, worldHeight, 1);
ds_grid_set_region(backWorldLight,0, 0,worldWidth, worldHeight, 1);

globalvar roomType, confOptimizing, conf3dStereo;

roomType = "menu";
confOptimizing = 1;
conf3dStereo = 0;
globalvar worldGenerateFinish, worldSetSeed;
worldSetSeed = random_get_seed();
worldGenerateFinish = 0;