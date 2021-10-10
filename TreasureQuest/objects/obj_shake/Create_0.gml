/// @description Insert description here
// You can write your code in this editor

// Should we shake the screen?
shake = false;

shake_mag_init = 3;
// The agressiveness of the shake.
shake_mag = shake_mag_init;
// Amount of time the screen should shake in seconds.
shake_time = .25*room_speed;
// Calms the screen shaking.
calm_shake = .1;
time_shaken = shake_time;

