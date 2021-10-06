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

// Check left right room boundy collision
function checkRightBoundry(playerXPos, room_width)
{
	if( playerXPos + 60 >= room_width)
	{
		return true;
	}
	return false;
}

// Check left right room boundy collision
function checkLeftBoundry(playerXPos, room_width)
{

	if( playerXPos - 3 <= 0)
	{
		return true;
	}
	return false;
}

// Check top bottom room boundry collision
function checkTopBoundry(playerYPos, room_height)
{
    if( playerYPos - 3 <= 0)
	{
		return true;
	}
	return false;
}
function checkBottomBoundry(playerYPos, room_height)
{
	if( playerYPos + 40 >= room_height)
	{
		return true;
	}
	return false;
}