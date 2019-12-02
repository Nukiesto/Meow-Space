for(var i = 0; i < argument0; i += 1) //Количество пещер
{
    xx = irandom(argument3);
    yy = irandom_range(argument2, argument4); //Глубина, ниже которой начнут генерироваться пещеры
    for(var j = 0; j < argument1; j += 1) //Размер одной пещеры
    {   
        var rr = irandom(3);
        if rr == 0 {xx = min(xx+1, argument3);}
        if rr == 1 {xx = max(xx-1, 0);}
        if rr == 2 {yy = min(yy+1, argument4);}
        if rr == 3 {yy = max(yy-1, 0);}
        if xx < 0 || xx > argument3
        && yy < 0 || yy > argument4
        {
            xx = irandom(argument3);
            yy = irandom_range(argument2, argument4);
        }
		ds_grid_set(argument5,ceil(xx),ceil(yy),-1);
    }
}

//generateDungeon(15, 10);