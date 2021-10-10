/// @description Insert description here
// You can write your code in this editor
instance_destroy();

with(obj_game_controller)
{
  items_collected += 1;	
  lives += 1;
}


with( obj_item_dock )
{
	if( !item_1_collected )
	{
		item_1_collected = true;
		item_1_sprite = spr_treasure_potion_mini;
	}
	else if( !item_2_collected )
	{
		item_2_collected = true;
		item_2_sprite = spr_treasure_potion_mini;
	}
	else
	{
		item_3_collected = true;
		item_3_sprite = spr_treasure_potion_mini;
	}
}