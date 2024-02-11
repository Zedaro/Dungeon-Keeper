/// @description detect player
// Sie können Ihren Code in diesem Editor schreiben

var _distance = point_distance(x, y, obj_golem.x, obj_golem.y)

if(_distance <= 75) {
	show_debug_message("HI! " + string(_distance))
	hovering_button_or_key ??= instance_create_layer(x, y - 35, layer_get_id("hovering_buttons_or_keys"), obj_keyboard_e)
} else if (_distance > 75 and hovering_button_or_key != undefined) {
	instance_destroy(hovering_button_or_key)
	hovering_button_or_key = undefined
}




