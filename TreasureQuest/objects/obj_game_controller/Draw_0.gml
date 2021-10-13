/// @description Insert description here
// You can write your code in this editor


switch (room)
{
case rm_game:
   
	draw_set_font( fnt_game );
    draw_text( camera_get_view_x(view_camera[0]) + 5, camera_get_view_y(view_camera[0]) + 6, "Lives: " + string(lives)  );
	// fa_left means set horizontal alignment to top left corner, this is a constant, highlight it and
	// hit f1 to see other alignment constants.
	draw_set_halign(fa_left);

    break;

case rm_instructions:
	draw_set_font( fnt_game );
    var c = c_red;
	draw_text_transformed_colour(room_width / 2, 100, "Treasure Quest", 3, 3, 0, c, c, c, c, 1);
draw_text(room_width / 2, 200, 
@"
UP ARROW: move up
DOWN ARROW: move down
LEFT/RIGHT ARROWS: change direction

Find all three pieces of treasure to win!
There is 1 piece of treasure in each biome. 
Avoid touching the enemies!You only have
3 lives to start with! Picking up a piece of 
treasure will give you an extra life!

>>PRESS ENTER TO START<<");
	draw_set_halign(fa_center);
	
    break;
	

case rm_lose:
	draw_set_font( fnt_game_win_lose );
    var c = c_red;
	draw_text_transformed_colour(95, 192, "Press Enter to Restart", 2, 2, 0, c, c, c, c, 1);


    break;
case rm_win:
	draw_set_font( fnt_game_win_lose );
    var c = c_red;
	draw_text_transformed_colour(95, 192, "Press Enter to Restart", 2, 2, 0, c, c, c, c, 1);
   
	
    break;
}
