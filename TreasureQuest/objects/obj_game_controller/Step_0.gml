/// @description Insert description here
// You can write your code in this editor

if( items_collected == 3 )
{
	room_goto(rm_win);
}

if( keyboard_check(vk_enter) && room != rm_game )
{
	room_goto(rm_game);
}
	