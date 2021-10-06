/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Draw title screen
// You can write your code in this editor

switch (room)
{
case rm_game:
   
	draw_set_font( fnt_game );
    draw_text(5, 6, "Lives: " + string(lives)  );
	// fa_left means set horizontal alignment to top left corner, this is a constant, highlight it and
	// hit f1 to see other alignment constants.
	draw_set_halign(fa_left);

    break;
	
	
case rm_instructions:
    var c = c_yellow;
	draw_text_transformed_colour(room_width / 2, 100, "Danger Walk", 3, 3, 0, c, c, c, c, 1);
draw_text(room_width / 2, 200, 
@"
UP ARROW: move up
DOWN ARROW: move down
LEFT/RIGHT ARROWS: change direction

Follow the lit up path to the door
without touching any other tile.
Remember what colors appear beneath your player!
Once you make it to the other side of the endless
pit walk over the colored buttons
in the order in which you saw the colored tiles.
Touching a non lit up tile will cause you to lose 50 
points! If you lose all of your
points its game over!

>>PRESS ENTER TO START<<");
	draw_set_halign(fa_center);
	
    break;
	

case rm_lose:
    
   
    break;
case rm_win:
    
	
    break;
}
