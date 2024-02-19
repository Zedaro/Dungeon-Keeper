// +1, -1 or 0
xspeed = 0
yspeed = 0
// x_ / y_speed will be multiplied by moce_speed
move_speed = 2

image_xscale = 0.2

set_depth = function() {
	if y != yprevious {
	    depth = -y
	}

	depth = -y;
}
key_check = function( _vk, _key_letter ) {
	return keyboard_check(_vk) || keyboard_check(ord(_key_letter))
}
has_collision = function(_obj, _xspeed = 0, _yspeed = 0) {
	return place_meeting(x + _xspeed, y + _yspeed, _obj)
}

calculate_xspeed = function() {
	var _is_right_key_pressed = key_check(vk_right, "D")
	var _is_left_key_pressed = key_check(vk_left, "A")
	var _x_base_speed = (_is_right_key_pressed - _is_left_key_pressed)
	var _xspeed = (_x_base_speed) * move_speed
	var _xscale
	// refactor this
	if (sign(_x_base_speed) != sign(image_xscale) && sign(_x_base_speed) != 0) {
		if (sign(_x_base_speed)) {
			_xscale = 0.2
		} else {
			_xscale = -0.2
		}
		image_xscale = _xscale
	}
	if has_collision(obj_crystal, _xspeed, 0) {
		_xspeed = 0
	}
	return _xspeed
}
calculate_yspeed = function() {
	var _is_down_key_pressed = key_check(vk_down, "S")
	var _is_up_key_pressed = key_check(vk_up, "W")
	var _yspeed = (_is_down_key_pressed - _is_up_key_pressed) * move_speed
	if has_collision(obj_crystal, 0, _yspeed) {
		_yspeed = 0
	}
	return _yspeed
}

move = function() {
	xspeed = calculate_xspeed()
	yspeed = calculate_yspeed()
	set_depth()
	x += xspeed
	y += yspeed
	// Change sprite
	if (xspeed != 0  ||  yspeed != 0) {
		sprite_index = spr_golem_walking
	} else {
		sprite_index = spr_golem_idle
	}
}




