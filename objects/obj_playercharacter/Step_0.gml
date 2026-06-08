var _hor = real(keyboard_check(ord("D")) - keyboard_check(ord("A")));
var _vert = real(keyboard_check(ord("S")) - keyboard_check(ord("W")));

move_and_collide(_hor * move_speed, _vert * move_speed, tilemap);

// Logic to control Sprite Looking Direction
/*
if (_hor != 0 && _vert != 0) 
{
	if (_vert > 0) sprite_index = spr_player_walk_down;
	else if (_vert < 0) sprite_index = spr_player_walk_up;
	else if (_hor > 0) sprite_index = spr_player_walk_right;
	if (_hor < 0) sprite_index = spr_player_walk_left;
}
else // If no movement input
{
	if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
	if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
	if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
	if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
}
*/

if (keyboard_check_pressed(ord("E")))
{
	
	show_debug_message("hor = " + string(_hor));
	show_debug_message("vert = " + string(_vert));
	var _inst = instance_create_depth(x, y, depth, obj_Attack);
	_inst.image_angle = point_direction(0, 0, _hor, _vert);
	
	show_debug_message("x = " + string(x));
	show_debug_message("y = " + string(y));
	
	
	
	//_inst.damage *= damage;
}