targ = objPlayer;

if instance_exists(targ)
{
    x = targ.x;
    y = targ.y - 6;
    sprite_index = targ.handL.sprite_index;
    sW = sprite_get_width(weapon.sprite_index) / 2;
    weapon.angle = angle;
    weapon.sprite_index = targ.weapon.sprite_index;
    if targ.weapon.a == 1
    {
        weapon.x = x + lengthdir_x(sW, angle - 90);
        weapon.y = y + lengthdir_y(sW, angle - 90);
        weapon.depth = 2;
        depth = 2;
        if angle > 0
        {
            angle = max(angle - 20, 0);
        }
    }
    else
    {
        weapon.x = x - lengthdir_x(sW, angle + 90);
        weapon.y = y - lengthdir_y(sW, angle + 90);
        weapon.scale = -1;
        weapon.depth = -1;
        depth = -2;
        if angle < 0
        {
            angle = min(angle + 20, 0);
        }
    }
    if angle == 0
    {
        with weapon instance_destroy();
        targ.attack = 0;
        instance_destroy();
    }
}