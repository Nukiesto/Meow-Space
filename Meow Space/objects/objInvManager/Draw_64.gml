/// @description Draw Inventory

draw_sprite(sprInv, -1, 			
			guiHolderPosX,
			guiHolderPosY
			);

draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_color(c_gray);
var temp=gpu_get_tex_mip_filter();
if (temp=!tf_linear)
{
		
	gpu_set_tex_mip_filter(tf_linear);
}
for (var i = 0; i < MAX_ACTIVE_INV_ITEMS; ++i) {
    itemDefIndex = inventory[i];
	
	if (itemDefIndex != ItemType.none) {
		draw_sprite_ext(inv_Definitions[itemDefIndex, ItemProperties.sprite], -1,
					(guiHolderPosX + guiHolderPad) + (guiHolderSlotOffsetX * i) - guiHolderWidth,// + guiHolderPad,
					guiHolderPosY - guiHolderSlotOffsetX + guiHolderPad - 3,
					guiHolderSlot / sprite_get_width(inv_Definitions[itemDefIndex, ItemProperties.sprite]),
					guiHolderSlot / sprite_get_width(inv_Definitions[itemDefIndex, ItemProperties.sprite]),
					0,
					c_white,
					1
					);	
		draw_text((guiHolderPosX + guiHolderPad) + (guiHolderSlotOffsetX * i) - guiHolderWidth,// + guiHolderPad,
					guiHolderPosY - 3,
					string(inv_Definitions[itemDefIndex, ItemProperties.amount])
					);					
	}
}

draw_sprite_ext(sprInvSel, -1,
					(guiHolderPosX + guiHolderPad) + (guiHolderSlotOffsetX * select) - guiHolderWidth,
					guiHolderPosY - guiHolderSlotOffsetX + guiHolderPad - 3,
					guiHolderSlot / sprite_get_width(sprInvSel),
					guiHolderSlot / sprite_get_width(sprInvSel),
					0,
					c_white,
					1
					);
gpu_set_tex_mip_filter(temp);