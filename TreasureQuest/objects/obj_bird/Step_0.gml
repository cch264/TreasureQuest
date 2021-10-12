/// @description Insert description here
// You can write your code in this editor

// move bird in circular motion

if( start_moving )
{
	x = (sin(degtorad(dir)) * 40) + x_offset;
	y = (cos(degtorad(dir)) * 40) + y_offset;
	dir += fly_speed;

	if (dir > 360)
	{
	    dir = fly_speed;	
	}

	image_angle += fly_speed;
}