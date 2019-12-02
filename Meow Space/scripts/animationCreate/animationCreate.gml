body = instance_create_depth(x, y,-3, objPlayerPart);
body.sprite_index = sprPlayerBody;

legR = instance_create_depth(x, y,-2, objPlayerPart);
legR.sprite_index = sprPlayerLeg;

legL = instance_create_depth(x, y,-4, objPlayerPart);
legL.sprite_index = sprPlayerLeg;

handR = instance_create_depth(x, y,-1, objPlayerPart);
handR.sprite_index = sprPlayerHand;

handL = instance_create_depth(x, y,-5, objPlayerPart);
handL.sprite_index = sprPlayerHand;

head = instance_create_depth(x, y,-2, objPlayerPart);
head.image_index = 1;
head.sprite_index = sprPlayerHead;

weapon = instance_create_depth(x, y,-3, objPlayerWeapon);
weapon.sprite_index = sprPlayerLeg;
weapon.a = 1;

angleDir = 1;
attack = 0;
aa=0;
run = 0;