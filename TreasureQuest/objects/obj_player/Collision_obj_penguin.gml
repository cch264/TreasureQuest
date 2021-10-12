/// @description Insert description here
// You can write your code in this editor
if( !collided_with_enemy && knock_back_cool_down == 0)
{
	with( obj_game_controller )
	{
	 lives -= 1;
	}
	var collision_direction;
	
	   // If the enemy is to the right of the player move player left
	   if( other.mov_dir = "left" )
		{
			collision_direction = "left";
		}
		// If the enemy is to the left of the player move player right
		else
		{
		  collision_direction = "right";	
		}
	

	
		collided_with_enemy = true;
	    obj_player.collision_direction = collision_direction;
		// Cool down period before player can get hit again.
		knock_back_cool_down = 4;
		
		alarm[1] = knock_back_cool_down * room_speed;
		
		with( obj_shake )
		{
			shake = true;
		}
}
else
{
	show_debug_message("Collided with enemy: " + string( collided_with_enemy ));
	show_debug_message("Cool down: " + string( knock_back_cool_down ));
}