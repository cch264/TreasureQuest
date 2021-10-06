/// @description Insert description here
// You can write your code in this editor


if(!move_down)
{
	TweenEasyMove(x, y, x, y - 5, 0, 120, EaseInOutQuad);
	move_down = true;
	alarm[0] = 2*room_speed;
}
else
{
	TweenEasyMove(x, y, x, y + 5, 0, 120, EaseInOutQuad);
	move_down = false;
	alarm[0] = 1.5*room_speed;
}