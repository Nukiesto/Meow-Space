//Размеры мира
#macro world_width 32
#macro world_height 24

fname = "tempBackMenu";
//file_delete(working_directory + "Data\Temp\_" + string(fname));
spriteBack = 0;

//Создаём объекты наших блоков(Просто создаём все объекты, родитель которых равен 'blocks')
var i = -1;
while(object_exists(++i)) if(object_get_parent(i) == objBlockPar) instance_create_depth(0, 0, 0, i);

//Создаём DS гриды где будет хранится наш мир из блоков
front_world = ds_grid_create(world_width, world_height);//Передний мир
back_world  = ds_grid_create(world_width, world_height);//Задний мир

//Записываем ID камеры 0 вида
camera = view_camera[0];

//Создаём сурфейс
light_surface = surface_create((camera_get_view_width(camera) div 16) + 2, (camera_get_view_height(camera) div 16) + 2);

//************| Генерация мира |************//
randomize();//"Рандомный рандом"

//Простая поверхность

ds_grid_set_region(front_world, 0, 0, world_width, world_height, objBlockStone)//Сначало заполняем камнем

ds_grid_copy(back_world, front_world);
generateDungeon(8, choose(40,50), 0,world_width, world_height, front_world);
generateOre(8, choose(3,4), 0, objBlockOreCoal,world_width, world_height, front_world);
generateOre(5,choose(1,2), 0, objBlockOreIron,world_width, world_height, front_world);
finish = 0;
//ds_grid_set_region(front_world, 0, world_height-1, world_width, world_height-1, objBlockBedrock);
//generateTerrain(world_width, world_height, front_world);
/*
//Пещеры

//Создаём временную сетку и заполняем её случайными число от 0 до 1
var dungeons = ds_grid_create(world_width, world_height);
for(var xx = 0; xx < world_width; xx++) for(var yy = 0; yy < world_height; yy++) dungeons[# xx, yy] = irandom_range(0, 100) / 100;

var smooth = ds_grid_create(world_width, world_height);//Создаём еще одну временную сетку...
repeat(16){
	ds_grid_copy(smooth, dungeons);
	for(var xx = 0; xx < world_width; xx++) {
		for(var yy = 0; yy < world_height; yy++) {
			ds_grid_set(dungeons, xx, yy, ds_grid_get_disk_mean(smooth, xx, yy, 2));
		}
	}
}
ds_grid_destroy(smooth);

for(var xx = 0; xx < world_width; xx++){
	for(var yy = 0; yy < world_height; yy++){
		if(dungeons[# xx, yy] > 0.5) ds_grid_set(front_world, xx, yy, 0);
	}
}
ds_grid_destroy(dungeons);