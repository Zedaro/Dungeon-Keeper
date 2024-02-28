/// @description detect player
// Sie können Ihren Code in diesem Editor schreiben

var _distance = point_distance(x, y, obj_golem.x, obj_golem.y)

if(_distance <= popup_radius) {
	popup.visible = is_popup_visible || true
} else if (_distance > popup_radius) {
	popup.visible = is_popup_visible || false
}

if keyboard_check(ord("E")) {
	healthbar.hp -= 1 / 30
}

if healthbar.hp < healthbar.max_hp {
	healthbar.visible = true
}

if healthbar.hp <= 0 {
	instance_destroy(popup)
	instance_destroy(self)
}
