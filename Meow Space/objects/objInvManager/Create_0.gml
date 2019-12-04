/// @description Inventory Initialize

inv_Initialize();

camera = view_camera[0];

guiHolderWidth    = sprite_get_width(sprInv) / 2;
guiHolderPosX     = (camera_get_view_width(camera) / 2);
guiHolderPosY     = camera_get_view_height(camera) -4;
guiHolderPad      = 6;
guiHolderSlotOffsetX = 32 + guiHolderPad + 2;
guiHolderSlot = 32;

select = 0;
selectBlock = -1;

image_speed = 0;

//blockDef[0] = -1;
