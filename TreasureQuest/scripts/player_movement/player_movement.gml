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