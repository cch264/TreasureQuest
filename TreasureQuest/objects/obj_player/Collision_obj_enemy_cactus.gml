/// @description Insert description here
// You can write your code in this editor

if( !collided_with_enemy && knock_back_cool_down == 0)
{
	with( obj_game_controller )
	{
	 lives -= 1;
	}
	var collision_direction;
	
	   // Player coord first
	   var enemy_direction = point_direction(x, y, other.x, other.y);
	
	   // If the enemy is to the right of the player move player left
	   if( enemy_direction <= 45 && enemy_direction >= 0 || enemy_direction <= 360 && enemy_direction >= 315 )
		{
			collision_direction = "left";
		}
		// If the enemy is to the above the player move player down
		else if(  enemy_direction >= 45 && enemy_direction <= 135 )
		{
			collision_direction = "down";
		}
		// If the enemy is to the left of the player move player right
		else if( enemy_direction >= 135 && enemy_direction <= 225 )
		{
		  collision_direction = "right";	
		}
		else
		{
			 collision_direction = "up";	
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