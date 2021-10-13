/// @description Insert description here
// You can write your code in this editor

if( room == rm_start_screen )
{
	var obj_screen = instance_create_layer(0, -400, "Instances", obj_title_screen);

	with( obj_screen )
	{
		TweenEasyMove(x, y, x, y + 400, 0, 120, EaseOutBounce );	
	}
}