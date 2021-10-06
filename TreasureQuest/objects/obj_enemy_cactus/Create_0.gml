/// @description Insert description here
// You can write your code in this editor

// Move this to the game controller. Gets a new seed for generating random numbers
randomize();

walkedUpAmount = 0;
walkedDownAmount = 0;
speed_min = .5;
speed_max=  2;

step_count = 0;

enemy_walk_distance = 200;

enemy_speed = random_range( speed_min, speed_max);

changedSpeed = false;


dashing_left = false;
dashing_right = false;
dashing = false;
dash_distance = 60;
distance_dashed = 0;
dash_speed = 1.5;
return_dash = false;

actually_dash = false;