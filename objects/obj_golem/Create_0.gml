/// @description Initialize instance variables and functions

step_speed = 2

basic_depth_check = function() {
	if y != yprevious {
	    depth = -y
	}

	depth = -y;
}

key_check = function( _vk, _key_letter ) {
	return keyboard_check(_vk) || keyboard_check(ord(_key_letter))
}
basic_movement_check = function() {
	if key_check(vk_up, "W") && basic_collision_check(0, -step_speed) {
		y -= step_speed
	}

	if key_check(vk_down, "S") && basic_collision_check(0, step_speed) {
		y += step_speed
	}

	if key_check(vk_left, "A") && basic_collision_check(-step_speed, 0) {
		x -= step_speed
	}

	if key_check(vk_right, "D") && basic_collision_check(step_speed, 0) {
		x += step_speed
	}
}

basic_collision_check = function(_x = 0, _y = 0) {
	return !place_meeting(x + _x, y + _y, obj_crystal)
}




