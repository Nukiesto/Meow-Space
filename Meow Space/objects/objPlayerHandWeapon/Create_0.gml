targ = objPlayer;    

weapon = instance_create_depth(x, y,0, objPlayerWeapon);
weapon.sprite_index = sprNoone;
if targ.weapon.a == 1
angle = 135;
else
angle = -135;