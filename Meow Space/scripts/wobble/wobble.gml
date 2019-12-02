// Скрипт следующего вида
// x = sc_wobble(x, target_x, slowness, wobble, array_index)
// - wobble может быть между 1.05 и 2.
// - slowness может быть от 16 до 100.
// - array_index отражает id операции.
// Для этого скрипта необходимо инициализировать spd[array_index] = 0
//
//Скрипт плавного изменения переменной от x до target_x.
//
// Написан Mordi (2006 год.)

var dis, xx, tar, fric;
xx=argument0;
tar=argument1;
fric=argument2;
sp=argument3;

dis=point_distance(xx,xx,tar,tar)/2;

if xx<tar { spd[argument4]+=dis/fric; }
if xx>tar { spd[argument4]-=dis/fric; }

spd[argument4]=spd[argument4]/sp;
xx+=spd[argument4];

return xx;