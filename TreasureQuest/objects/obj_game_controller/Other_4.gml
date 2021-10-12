/// @description Insert description here
// You can write your code in this editor
if(room == rm_lose)
	{
		if( obj_item_dock.item_1_collected )
		{
			show_debug_message("SHOWING 1");
			
			if( obj_item_dock.item_1_sprite == spr_treasure_ruby_mini)
			{
				instance_create_layer(81, 259, "Instances", obj_treasure_ruby);
			}
			else
			{
				instance_create_layer(81, 259, "Instances", obj_treasure_potion);
			}
			
		}

		if( obj_item_dock.item_2_collected )
		{
			if(obj_item_dock.item_2_sprite == spr_treasure_ruby_mini)
			{
				instance_create_layer(176, 259, "Instances", obj_treasure_ruby);
			}
			else
			{
				instance_create_layer(176, 259, "Instances", obj_treasure_potion);
			}
		}


	}