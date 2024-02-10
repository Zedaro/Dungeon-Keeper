/// @description detect player
// Sie können Ihren Code in diesem Editor schreiben

var _distance = point_distance(x, y, obj_golem.x, obj_golem.y)
var _key_e_id

if(_distance <= 75) {
	show_debug_message("HI! " + string(_distance))
	_key_e_id = instance_create_layer(x, y - 35, layer, obj_keyboard_e)
} else if (_distance > 75 and instance_exists(obj_keyboard_e)) {
	// Crashes weil dieses Script jeden step ausgeführt wird. D.h. es kann eine Instanz von der E Taste geben,
	// ohne dass hier die id davon gepeichert wird. So verstehe ich den Fehler, aber ich könnte mich auch irren
	// instance_destroy(_key_e_id)
}




