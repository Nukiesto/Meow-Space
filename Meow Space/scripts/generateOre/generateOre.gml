for(var i = 0; i < argument0; i += 1) //Количество залежей руды
{
	xx = irandom(argument4);
	yy = irandom_range(argument2, argument5); //Глубина, ниже которой начнёт генерироваться руда
	for(var j = 0; j < argument1; j += 1) //Кол-во блоков в одной жиле
	{   
	    var rr = irandom(3);
	    if rr == 0 {xx = min(xx+1, argument4);}
	    if rr == 1 {xx = max(xx-1, 0);}
	    if rr == 2 {yy = min(yy+1, );}
	    if rr == 3 {yy = max(yy-1, 0);}
	    if xx < 0 || xx > argument4
	    && yy < 0 || yy > argument5
	    {
	        xx = irandom(argument4);
	        yy = irandom_range(argument2, argument5);
	    }
		ds_grid_set(argument6,ceil(xx),ceil(yy),argument3);
	}
}
//generateOre(15, 10);