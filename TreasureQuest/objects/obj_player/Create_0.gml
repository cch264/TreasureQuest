/// @description Insert description here
// You can write your code in this editor


// Player left and right instance variables

finished_rolling = true;

// Indicates what direction the player is rolling
rolling_left = false;

// Number of pixels to move player after they hit left/right arrow keys.
finished_rolling_distance = 20;

// Indicates when the sprite reaches frame where it has flipped 180 degrees.
roll_stop = false;

init_begin_roll_speed = 1.3;

init_finish_roll_speed = 3;

begin_roll_speed = init_begin_roll_speed;

finish_roll_speed = init_finish_roll_speed;

begin_roll_multiply = .03;

finish_roll_multiply = .02;

slow_left_right_roll = false;



// Player up and down instance variables

total_distance_rolled = 0;

init_player_speed = .2;

player_speed_multiply = .1;

current_player_speed = init_player_speed;


slow_down_player = false;

// False means the player is moving down and needs to be slowed down
// True means the player is moving up and needs slowed down.
slow_down_direc_up = false;


/////// Enemy Collisions ////////
collided_with_enemy = false;
knock_back_distance = 200;
knock_back_speed = 6;
distance_knocked_back = 0;
knock_back_cool_down = 0;

collision_direction = "left";