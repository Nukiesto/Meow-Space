for(var i = 0; i < argument0; i += 1)
{
    for(var j = 0; j < argument1; j += 1)
    {
		if  (ds_grid_get(frontWorld, i, j)!= -1)
		{
            var _idBlok;
			//idBlok=instance_create(i * 32, j * 32, ds_grid_get(frontWorld, i, j));
			_idBlok=instance_create_depth(i * 32, j * 32,0, ds_grid_get(argument2, i, j));;
			ds_grid_set(idBlock,i,j,_idBlok);  
		}
    }
}

//generateTerrain(worldWidth, worldHeight);