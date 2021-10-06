/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

// Trigered every step that the left key is held down for

if( !collided_with_enemy )
{
	if( keyboard_check_released( vk_up ) )
	{
		slow_down_player = true;
		slow_down_direc_up = true;
	}


	if( keyboard_check_released( vk_down ) )
	{
		slow_down_player = true;
		slow_down_direc_up = false;
	}

	if( !finished_rolling )
	{
		// if the players current animation frame is 1 or 10, image_index is zero based and real numbers so
		// If we are on frame 0 that means image index is < 1. If we are on frame 10 that means image_index is < 10 and > 9
		roll_stop = stopRolling( image_index );
		begin_roll = startingToRoll( image_index );
	
		if( rolling_left )
		{
			// keep moving the player if they have not moved more than needed to complete one "Roll"
			// Stop rolling if player is colliding with left or right room boundries
			if( !roll_stop )
			{
				if( begin_roll )
				{
					image_speed = .8;
					if( !checkLeftBoundry(x, room_width) )
					{
						x -= begin_roll_speed;
					}
					begin_roll_speed += begin_roll_multiply;
					show_debug_message( "BEGIN ROLL ");
				}
				else
				{
					image_speed = 1;
				
					if(  !checkLeftBoundry(x, room_width) )
					{
						x -= finish_roll_speed;
					}
					finish_roll_speed += finish_roll_multiply;
					show_debug_message( "FINISH ROLL ");
				}
		
			}
			else
			{
				if( !keyboard_check( vk_left ) )
				{
					show_debug_message( "STOPPING ROLL, IMAGE INDEX: " + string( image_index ) );
					finished_rolling = true;
					slow_left_right_roll = true;
					begin_roll_speed = init_begin_roll_speed;
					finish_roll_speed = init_finish_roll_speed;
				    image_speed = 0;		
				}
		 
			}
		}
		else
		{
			// keep moving the player if they have not moved more than needed to complete one "Roll"
			if( !roll_stop )
			{
				if( begin_roll )
				{
					image_speed = .8;
					if( !checkRightBoundry(x, room_width) )
					{
						x += begin_roll_speed;
					}
					begin_roll_speed += begin_roll_multiply;
					show_debug_message( "BEGIN ROLL ");
				}
				else
				{
					image_speed = 1;
					if( !checkRightBoundry(x, room_width) )
					{
						x += finish_roll_speed;
					}
					finish_roll_speed += finish_roll_multiply;
					show_debug_message( "FINISH ROLL ");
				}
		
			}
			else
			{
				if( !keyboard_check( vk_right ) )
				{
					show_debug_message( "STOPPING ROLL, IMAGE INDEX: " + string( image_index ) );
					finished_rolling = true;
					slow_left_right_roll = true;
					begin_roll_speed = init_begin_roll_speed;
					finish_roll_speed = init_finish_roll_speed;
				    image_speed = 0;		
				}
		 
			}
		}
	}

	if( slow_down_player )
	{
		// If the players speed is above 0 and the player is not colliding with the top and bottom of the room.
		if( current_player_speed > 0 && !checkTopBoundry(y, room_height) && !checkBottomBoundry(y, room_height))
		{
			// If player is moving upward, subtract from the object y coords.
			if( slow_down_direc_up )
			{
				y -= current_player_speed;	
			}
			// If player is moving down add to the objects y coords.
			else
			{
				y += current_player_speed;
			}
		
			// Decrease the current player speed to slow the player down.
			current_player_speed -= player_speed_multiply;
			// The player wont be pressing any keys, so make sure the animation still plays
			image_speed = 1;
		}
		else
		{
			// If players current speed is less than zero, stop moving player and reset 
			//the current speed to the initial player speed
		    current_player_speed = init_player_speed;	
			// Indicate that we are down slowing down the player
			slow_down_player = false;
		}
	
	}


	if( keyboard_check( vk_left ) && !slow_down_player && finished_rolling )
	{
		sprite_index = spr_player_left;
		image_speed = 1;
	
		rolling_left = true;
		finished_rolling = false;
	}

	else if(keyboard_check( vk_right ) && !slow_down_player && finished_rolling )
	{

		sprite_index = spr_player_right
		image_speed = 1;
	
		rolling_left = false;
		finished_rolling = false;
	}

	// Only allow player to move upward if we arent currently slowing down.
	if( keyboard_check( vk_up ) && !slow_down_player && finished_rolling )
	{
	
		sprite_index = spr_player_reverse;
	
		if(!checkTopBoundry(y, room_height))
		{
			y -= current_player_speed;
	
			if( current_player_speed < 6 )
			{
			  current_player_speed += player_speed_multiply;	
			}
		}
	
		image_speed = 1;
	}

	// Only allow player to move down if we arent currently slowing down.
	if( keyboard_check(vk_down) && !slow_down_player && finished_rolling ) 
	{
		sprite_index = spr_player_forward;
		if(!checkBottomBoundry(y, room_height))
		{
		
			y += current_player_speed;
	
			if( current_player_speed < 6 )
			{
			  current_player_speed += player_speed_multiply;	
			}
		}
	
		image_speed = 1;
	}
}
else
{
	switch(collision_direction)
	{
		case "up":
			if( !checkTopBoundry(y, room_height) )
			{
				y -= knock_back_speed;
				distance_knocked_back += knock_back_speed;
			}
			else
			{
				distance_knocked_back = knock_back_distance;
			}
		break;
		
		case "down":
			if( !checkBottomBoundry(y, room_height) )
			{
				y += knock_back_speed;
				distance_knocked_back += knock_back_speed;
			}
			else
			{
				// End knock back movement cus we have a collision
				distance_knocked_back = knock_back_distance;
			}
		break;
		
		case "left":
			if( !checkLeftBoundry(x, room_height) )
			{
				x -= knock_back_speed;
				distance_knocked_back += knock_back_speed;
			}
			else
			{
				distance_knocked_back = knock_back_distance;
			}
		break;
		
		case "right":
			if( !checkRightBoundry(x, room_height) )
			{
				x -= knock_back_speed;
				distance_knocked_back += knock_back_speed;
			}
			else
			{
				distance_knocked_back = knock_back_speed;
			}
		break;
	}
	
	if( distance_knocked_back >= knock_back_distance)
	{
		
		collided_with_enemy = false;
		distance_knocked_back = 0;
	}
}

// If the player is being slowed down, continue animating them even after the player releases the movement key.
if( keyboard_check( vk_nokey ) && !slow_down_player && finished_rolling )
{
	image_speed=0;
}




	