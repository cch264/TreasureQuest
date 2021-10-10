// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stopRolling( image_index )
{
   if( image_index < 10 && image_index >= 9)
   {
	   return true;
   }
   else if( image_index < 1)
   {
	   return true;
   }
   else
   {
	   return false;
   }
   
}

function startingToRoll( image_index )
{
	if( image_index < 7 || image_index > 9 && image_index  < 16)
	{
		return true;
	}
	else if( image_index > 7 && image_index < 9 ||   image_index > 16  && image_index < 18  )
	{
	  return false;	
	}
}

// Check right room boundry collision
function checkRightBoundry(playerXPos, room_width)
{
	if( playerXPos + rightOffset >= room_width )
	{
		return true;
	}
	return false;
}

// Check left room boundry collision
function checkLeftBoundry(playerXPos, room_width)
{

	if( playerXPos - leftOffset <= 0)
	{
		return true;
	}
	return false;
}

// Check top room boundry collision
function checkTopBoundry(playerYPos, room_height)
{
    if( playerYPos - topOffset <= 0 )
	{
		return true;
	}
	return false;
}

// Check bottom room boundry collision
function checkBottomBoundry(playerYPos, room_height)
{
	if( playerYPos + bottomOffset >= room_height )
	{
		return true;
	}
	return false;
}

function checkForStoppingCollision( playerXPos, playerYPos, room_width, room_height, collision_to_check )
{
	switch( collision_to_check )
	{
		case "top_boundry":
		// checkFooBoundry checks the players position against the room boudnries, place meeting checks the player and invisible barriers collision masks!.
		  return checkTopBoundry(playerYPos, room_height) || place_meeting( playerXPos, playerYPos - 3, obj_invisible_barrier );
		break;
		
		case "bottom_boundry":
		  return checkBottomBoundry(playerYPos, room_height) || place_meeting( playerXPos, playerYPos + 5, obj_invisible_barrier  );
		break;
		
		case "right_boundry":
		  return checkRightBoundry( playerXPos, room_width ) || place_meeting( playerXPos + 5, playerYPos, obj_invisible_barrier  );
		break;
		
		case "left_boundry":
		  return checkLeftBoundry( playerXPos, room_width ) || place_meeting( playerXPos - 5, playerYPos, obj_invisible_barrier  );
		break;
	}
}