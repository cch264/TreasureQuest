/// @description Insert description here
// You can write your code in this editor

if( items_collected == 3 && room != rm_win )
{
	room_goto(rm_win);
	show_debug_message("Goin to win room");
}

if( keyboard_check(vk_enter) && room == rm_instructions && room != rm_game )
{
	room_goto(rm_game);
}

if( keyboard_check(vk_enter) && room == rm_win || room == rm_lose )
{
	room_goto(rm_start_screen);
	show_debug_message("GOIN TO START");
}

if( mouse_check_button_pressed(mb_left) && room == rm_start_screen )
{
	room_goto(rm_instructions);
}

if(keyboard_check(vk_enter))
{
 show_debug_message("I know you hit enter")	
}
	