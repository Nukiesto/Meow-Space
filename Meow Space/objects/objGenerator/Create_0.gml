//Размеры мира
#macro worldWidth 256
#macro worldHeight 256

terrainDestruct = 2; //��� ������ ��������, ��� ����������� ���������� ����� ������. ���� ���� �� �������.
meter = irandom_range(13, 17);
curX = 0;
//Создаём объекты наших блоков(Просто создаём все объекты, родитель которых равен 'blocks')
var i = -1;
while(object_exists(++i)) if(object_get_parent(i) == objBlockPar) instance_create_depth(0, 0, 0, i);

//Создаём DS гриды где будет хранится наш мир из блоков
frontWorld = ds_grid_create(worldWidth, worldHeight);//Передний мир
backWorld  = ds_grid_create(worldWidth, worldHeight);//Задний мир
idBlock  = ds_grid_create(worldWidth, worldHeight);//Задний мир

currentBiomeBlock = objBlockDirt;
changeBiomeRate1 = 20;
changeBiomeRate2 = 40;
changeBiomeTime = irandom_range(changeBiomeRate1, changeBiomeRate2);
currentBiomeTime = 0;

//************| Генерация мира |************//
randomize();//"Рандомный рандом"

for(i = 0; i < worldWidth; i += 1)
{
    for(j = 0; j < worldHeight; j += 1)
    {  
       ds_grid_set(frontWorld,i, j, -1);
    }
}

repeat worldWidth
{
    while meter < worldHeight 
    {
        meter += 1; 
        if meter < irandom_range(20, 25)
        {
            ds_grid_set(frontWorld,curX, meter, objBlockDirt);
        }
        else
        {
            ds_grid_set(frontWorld,curX, meter, objBlockStone);
        }
    }
    if meter == worldHeight 
    {
        curX += 1; 
        meter = irandom_range(13, 17) + irandom_range(-terrainDestruct, terrainDestruct);
    }
}
for(i = 1; i < worldWidth - 1; i += 1)
{
    for(j = 1; j < worldHeight - 1; j += 1)
    {  
        if ds_grid_get(frontWorld,i,j) == objBlockDirt
        {
            if (ds_grid_get(frontWorld,i - 1, j,)==-1)
            && (ds_grid_get(frontWorld,i + 1, j,)==-1)
            && (ds_grid_get(frontWorld,i, j - 1,)==-1)
            {
                ds_grid_set(frontWorld,i, j,-1);
            }
        }
    }
}

ds_grid_copy(backWorld, frontWorld);
generateDungeon(120, choose(50,50,120,120,120,250,400), 30,worldWidth, worldHeight,frontWorld);
generateOre(90, choose(3,4,4,5,5,5,8,8), 25, objBlockOreCoal,worldWidth, worldHeight,frontWorld);
generateOre(60, choose(3,3,4,4,4,5,8), 30, objBlockOreIron,worldWidth, worldHeight,frontWorld);
ds_grid_set_region(frontWorld, 0, worldHeight-1, worldWidth, worldHeight-1, objBlockBedrock);
ds_grid_set_region(frontWorld, 0, worldHeight-2, worldWidth, worldHeight-2, objBlockBedrock);
ds_grid_set_region(frontWorld, 0, worldHeight-choose(3,4), worldWidth, worldHeight-choose(3,4), objBlockBedrock);
generateTerrain(worldWidth, worldHeight, frontWorld);