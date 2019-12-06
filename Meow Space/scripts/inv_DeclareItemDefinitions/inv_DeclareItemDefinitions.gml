
inv_Definitions[ItemType.length, ItemProperties.length] = noone;

inv_AddItemDef(ItemType.none, sprNoone, "", 0, use_Empty(), noone, noone);

#region Flat
#region Biomes
inv_AddItemDef(
				ItemType.BlockDirt, 
				sprBlockDirt, 
				"Dirt", 
				0, 
				use_Empty(),
				objBlockDirt,
				noone
				);
inv_AddItemDef(
				ItemType.BlockSand, 
				sprBlockSand, 
				"Sand", 
				0, 
				use_Empty(),
				objBlockSand,
				noone);
#endregion
#region Tree
inv_AddItemDef(
				ItemType.TreeCactus, 
				sprTreeCactus, 
				"Cactus", 
				0, 
				use_Empty(),
				noone,
				noone);
inv_AddItemDef(
				ItemType.TreeOak, 
				sprTreeOak, 
				"Oak", 
				0, 
				use_Empty(),
				noone,
				noone);
inv_AddItemDef(
				ItemType.TreeDarkOak, 
				sprTreeDarkOak, 
				"Dark Oak", 
				0, 
				use_Empty(),
				noone,
				noone);
inv_AddItemDef(
				ItemType.TreeBerch, 
				sprTreeCactus, 
				"Berch", 
				0, 
				use_Empty(),
				noone,
				noone);
inv_AddItemDef(
				ItemType.TreeLeaves, 
				sprTreeLeaves, 
				"Leaves", 
				0, 
				use_Empty(),
				noone,
				noone);				
#endregion
#endregion	
#region Mine
#region A
inv_AddItemDef(
				ItemType.BlockStone, 
				sprBlockStone, 
				"Stone", 
				0, 
				use_Empty(),
				objBlockStone,
				objBlockCobblestone);
inv_AddItemDef(
				ItemType.BlockCobbleStone, 
				sprBlockCobblestone, 
				"Cobblestone", 
				0, 
				use_Empty(),
				objBlockCobblestone,
				noone);			
				
inv_AddItemDef(
				ItemType.BlockGravel, 
				sprBlockGravel, 
				"Gravel", 
				0, 
				use_Empty(),
				objBlockGravel,
				noone);
inv_AddItemDef(
				ItemType.BlockBedrock, 
				sprBlockBedrock, 
				"Bedrock", 
				0, 
				use_Empty(),
				objBlockBedrock,
				noone);
#endregion
#region Ores
inv_AddItemDef(
				ItemType.BlockOreCoal, 
				sprBlockOreCoal, 
				"Ore Coal", 
				0, 
				use_Empty(),
				objBlockOreCoal,
				noone);
inv_AddItemDef(
				ItemType.BlockOreIron, 
				sprBlockOreIron, 
				"Ore Iron", 
				0, 
				use_Empty(),
				objBlockOreIron,
				noone);
#endregion
#endregion			