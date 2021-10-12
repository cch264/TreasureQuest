/// @description Insert description here
// You can write your code in this editor

if( start_moving )
{
	if (mov_dir = "left")
	{
		x -= mov_speed;

		// switch direction if dash completed
		if (distance >= distance_per_dash)
		{
		    mov_dir = "right";
			distance = 0;
			mov_speed = 1;
			sprite_index = spr_penguin_right;
		}
	}

	else
	{
		x += mov_speed;
	
		// switch direction if dash completed
		if (distance >= distance_per_dash)
		{
		    mov_dir = "left";
			distance = 0;
			mov_speed = 1;
			sprite_index = spr_penguin_left;
		}
	}

	distance += mov_speed;

	// increase speed for first 100 pixels in a dash
	if (distance < 100)
	{
	    mov_speed += .1;	
	}

	// decrease speed for last 50 pixels in a dash
	if (distance > distance_per_dash - 50)
	{
	    mov_speed -= .2;	
	}
}