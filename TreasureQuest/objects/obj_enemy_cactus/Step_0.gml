/// @description Insert description here
// You can write your code in this editor


if( walkedUpAmount < enemy_walk_distance && !dashing )
{
  y -= enemy_speed;	
  walkedUpAmount += enemy_speed;
}
else if(walkedDownAmount < enemy_walk_distance  && !dashing)
{
	if( !changedSpeed )
	{
		changedSpeed = true;
		enemy_speed = random_range( speed_min, speed_max);
	}
	
	y += enemy_speed;	
    walkedDownAmount += enemy_speed;
}
else if( !dashing )
{
  walkedUpAmount = 0;
  walkedDownAmount = 0;
  changedSpeed = false;
  enemy_speed = random_range( speed_min, speed_max);
}

if( step_count >= 60 && !dashing )
{
	dashing = true;
	
	
	if( irandom_range(1, 2) == 1 )
	{
		dashing_left = true;
	}
	else
	{
		dashing_right = true;
	}
	step_count = 0;
}

// Try to dash
if(dashing)
{
	// Cactus has 1/4 chance to dash
	// Do not
  if(  irandom_range(1, 4) == 1 && !actually_dash )
  {
	  actually_dash = true;
	  
	  if( dashing_left)
	  {
		sprite_index = spr_cactus_punch_left;
	  }
	  else
	  {
		sprite_index  = spr_cactus_punch_right; 
	  }
  }
  else if( !actually_dash )
  {
	dashing = false;
	dashing_left = false;
	dashing_right = false;
	actually_dash = false;
  }
  
  // actually do the dash
  if( actually_dash )
  {
	  if( dashing_left && !return_dash )
	  {
		x -= dash_speed; 
		distance_dashed += dash_speed;
	  }
	  else if( !return_dash )
	  {
		 x += dash_speed;   
		 distance_dashed += dash_speed;
	  }
	  
	  if( distance_dashed >= dash_distance || return_dash )
	  {
		  if(!return_dash)
		  {
			distance_dashed = 0;
		  }
		  
		return_dash = true;
		
		
		if( distance_dashed <= dash_distance  )
		{
			 if( dashing_left )
			 {
				x += dash_speed; 
				distance_dashed += dash_speed;
			 }
			 else
			 {
				x -= dash_speed;   
				distance_dashed += dash_speed;
			 }
		}
		else
		{
			sprite_index  = spr_cactus_still;
			distance_dashed = 0;
			actually_dash = false;
			dashing = false;
			dashing_left = false;
			dashing_right = false;
			return_dash = false;
		}
	  }
  }
 
}


step_count++;