/// @description Insert description here
// You can write your code in this editor
//init a temp var to hold collision direction
if( !obj_player.collided_with_enemy && obj_player.knock_back_cool_down == 0)
{
	var collision_direction;
	   if ( dir >= 315 && dir <= 45 )
		{
			collision_direction = "left";
		}
		else if( dir >= 135 && dir <= 225 )
		{
			collision_direction = "right";
		}
		else if( dir >= 45 && dir <= 135 )
		{
		  collision_direction = "up";	
		}
		else
		{
			 collision_direction = "down";	
		}
	
	with(obj_player)
	{
		collided_with_enemy = true;
	    obj_player.collision_direction = collision_direction;
		// Cool down period before player can get hit again.
		knock_back_cool_down = 4;
		
		alarm[1] = knock_back_cool_down * room_speed;
	}

}