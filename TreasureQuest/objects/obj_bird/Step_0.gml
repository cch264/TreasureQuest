/// @description Insert description here
// You can write your code in this editor

// move bird in circular motion
x = (sin(degtorad(dir)) * 40) + x_offset;
y = (cos(degtorad(dir)) * 40) + y_offset;
dir += 2;

if (dir > 360)
{
    dir = 2;	
}

image_angle += 2;