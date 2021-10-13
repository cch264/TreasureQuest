/// @description Insert description here
// You can write your code in this editor

if(room == rm_start_screen)
{
	items_collected = 0;
	lives = start_lives;
}

if( items_collected == 3 && room != rm_win )
{
	room_goto(rm_win);
}

if( keyboard_check(vk_enter) && room == rm_instructions && room != rm_game )
{
	room_goto(rm_game);
}

if( keyboard_check(vk_enter) && room == rm_win )
{
	room_goto(rm_start_screen);
}
if( keyboard_check(vk_enter) && room == rm_lose )
{
	 game_restart();
}

if( mouse_check_button_pressed(mb_left) && room == rm_start_screen )
{
	room_goto(rm_instructions);
}

if( lives <= 0 && room != rm_lose )
{
	room_goto(rm_lose);
}
	