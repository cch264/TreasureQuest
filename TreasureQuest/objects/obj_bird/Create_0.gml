/// @description Insert description here
// You can write your code in this editor
x_offset = x;
y_offset = y;
dir = 0;
fly_speed = random_range(1.5, 3);

start_moving = false; 

randomise();
alarm[0] = random_range(.5, 1.2) * room_speed;