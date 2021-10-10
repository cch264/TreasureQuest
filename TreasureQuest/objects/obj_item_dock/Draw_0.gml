/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_item_dock, 1, camera_get_view_x(view_camera[0]) + 136 , camera_get_view_y(view_camera[0]) + 10 );

if( item_1_collected )
{
	draw_sprite(item_1_sprite, 1, camera_get_view_x(view_camera[0]) + 141 , camera_get_view_y(view_camera[0]) + 16 );
}

if( item_2_collected )
{
	draw_sprite(item_2_sprite, 1, camera_get_view_x(view_camera[0]) + 189 , camera_get_view_y(view_camera[0]) + 16 );
}

if( item_3_collected )
{
	draw_sprite(item_3_sprite, 1, camera_get_view_x(view_camera[0]) + 237 , camera_get_view_y(view_camera[0]) + 16 );
}
