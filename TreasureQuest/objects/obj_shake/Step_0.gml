/// @description Insert description here
// You can write your code in this editor

if (shake) 
{ 


   time_shaken -= 1; 
   // Shake left ( neg mag ) shake right ( pos mag )
   var x_shake = choose(-shake_mag, shake_mag); 
   // Shake up ( neg mag ) shake down (pos mag )
   var y_shake = choose(-shake_mag, shake_mag);
   view_xport[0] = x_shake;
   view_yport[0] = y_shake;

   if (time_shaken <= 0) 
   { 
      shake_mag -= calm_shake; 

      if (shake_mag <= 0) 
      { 
		  show_debug_message("Resetting shake vars");
         shake = false; 
		 time_shaken = shake_time;
		 shake_mag = shake_mag_init;
      } 
   } 
}
