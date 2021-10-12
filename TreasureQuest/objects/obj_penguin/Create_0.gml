/// @description Insert description here
// You can write your code in this editor

randomise();
mov_dir = "left";
mov_speed = random_range(1,3);
distance = 0;
distance_per_dash = 350;  // distance to travel before switching direction
start_moving = false;					  // should not be < 150

alarm[0] = random_range(1, 4) * room_speed;