angleStep = 10 + run;
angleStop = 45;
instance_activate_object(body);
instance_activate_object(head);
instance_activate_object(legR);
instance_activate_object(legL);
instance_activate_object(handR);
instance_activate_object(handL);

if (!place_free(x, y + 1)){
	if (aa)
	{
		aa=0;
		legR.angle = 0; 
		legL.angle = 0;
		handR.angle = 0; 
		handL.angle = 0;
	}
}
if keyboard_check(ord("A"))// && !keyboard_check(ord("D"))
{
    //contact("move_l", accel*!furnaceOpen*!invOpen);
    if !attack
    {
        weapon.a = -1;
        body.scale = -1;
        head.scale = -1;
        legR.scale = -1;
        legL.scale = -1;
        handR.scale = -1;
        handL.scale = -1;
    }
    if angleDir == 1
    {
        legR.angle += angleStep;
        legL.angle -= angleStep;
        handR.angle += angleStep;
        handL.angle -= angleStep;
        if legR.angle >= angleStop
        {
            angleDir = -1;
        }
    }
    else if angleDir == -1
    {
        legR.angle -= angleStep;
        legL.angle += angleStep;
        handL.angle += angleStep;
        handR.angle -= angleStep;
        if legR.angle <= -angleStop
        {
            angleDir = 1;
        }
    }
}
else
if keyboard_check(ord("D"))// && !keyboard_check(ord("A"))
{
    //accel = min(accel + speedAccel, (speedMove + run))//*!furnaceOpen*!invOpen;
    //contact("move_r", accel*!furnaceOpen*!invOpen);
    if !attack
    {
        weapon.a = 1;
        body.scale = 1;
        head.scale = 1;
        legR.scale = 1;
        legL.scale = 1;
        handR.scale = 1;
        handL.scale = 1;
    }
    if angleDir == 1
    {
        legR.angle -= angleStep;
        legL.angle += angleStep;
        handR.angle -= angleStep;
        handL.angle += angleStep;
        if legR.angle <= -angleStop
        {
            angleDir = -1;
        }
    }
    else if angleDir == -1
    {
        legR.angle += angleStep;
        legL.angle -= angleStep;
        handL.angle -= angleStep;
        handR.angle += angleStep;
        if legR.angle >= angleStop
        {
            angleDir = 1;
        }
    }
}

if attack == 1
{
    weapon.visible = 0;
    if weapon.a == 1
    {
        handL.visible = 0;
        handR.visible = 1;
        
    }
    else
    {
        handL.visible = 1;
        handR.visible = 0;
    }
}
else
{
    handL.visible = 1;
    handR.visible = 1;
    weapon.visible = 1;
}

if !keyboard_check(ord("A"))
&& !keyboard_check(ord("D"))
{
    weapon.angle = 45;
    legR.angle = 0;
    legL.angle = 0;
    handR.angle = 0;
    handL.angle = 0;
}
if place_free(x, y + 1)
{
    if weapon.a == -1
    {
        aa=1;
		legR.angle = -45;
        legL.angle = 45;
        handR.angle = -225//-135;
        handL.angle = 225//135;
    }
    else
    {
        aa=1;
		legR.angle = 45;
        legL.angle = -45;
        handR.angle = 135;
        handL.angle = -135;
    }
}

if mouse_check_button(mb_left)
{
    if attack == 0
    {
        attack = 1;
        instance_create_depth(x, y,0, objPlayerHandWeapon);
    }
}

body.x = x;
body.y = y;

head.x = x;
head.y = y - 17;

handR.x = x;
handR.y = y - 6;

handL.x = x;
handL.y = y - 6;

legR.x = x;
legR.y = y + 12;

legL.x = x;
legL.y = y + 12;

if weapon.a == 1 {weapon.scale = 1; weapon.yscale = -1;}
if weapon.a == -1 {weapon.scale = 1; weapon.yscale = 1;}

sW = sprite_get_width(weapon.sprite_index) / 2;
if weapon.a == -1
{
    weapon.x = handR.x + lengthdir_x(sW, handR.angle - 115);
    weapon.y = handR.y + lengthdir_y(sW, handR.angle - 115);
    //if !attack weapon.angle = handR.angle + 180;
    //weapon.depth = -2;
}
else
{
    //weapon.depth = 2;
    if place_free(x, y + 1)
    {
        weapon.x = handL.x + lengthdir_x(sW, handL.angle - 65);
        weapon.y = handL.y + lengthdir_y(sW, handL.angle - 65);
        //if !attack weapon.angle = handR.angle + 90;//-90
    }
    else
    {
        weapon.x = handL.x + lengthdir_x(sW, handL.angle - 65);
        weapon.y = handL.y + lengthdir_y(sW, handL.angle - 65);
        //if !attack weapon.angle = handL.angle;
        //else weapon.angle = handL.angle;
    }
}