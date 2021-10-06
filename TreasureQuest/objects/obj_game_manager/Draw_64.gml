/// @description Insert description here
// You can write your code in this editor


switch (room)
{
case rm_game:
    draw_set_font(fnt_game);
   
    draw_text(5, 6, "Lives: " + string(player_lives) );
	// fa_left means set horizontal alignment to top left corner, this is a constant, highlight it and
	// hit f1 to see other alignment constants.
	
	draw_set_halign(fa_left);
    break;
}
