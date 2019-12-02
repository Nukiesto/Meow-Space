/*for(i = 0; i < worldWidth; i += 1)
{
    for(j = 0; j < worldHeight; j += 1)
    {
        //draw_sprite(map[i, j], -1, i*32, j*32);
        instance_create(i * 32, j * 32, map[i, j]);
    }
}*/

if keyboard_check(ord("W")) y -= 50;
if keyboard_check(ord("S")) y += 50;
if keyboard_check(ord("A")) x -= 50;
if keyboard_check(ord("D")) x += 50;

/* */
/*  */
