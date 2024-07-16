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

var _is_item_in_inventory = function (_sprite) {
	var _i = 0
	while (_i < INVENTORY_SLOTS) {
		if (obj_inventory.inventory[i] == _sprite) return true
		_i++
	}
	return false
}

var _get_inventory_positions_of_item = function (_item) {
	var _positions = ds_list_create()
	var _i = 0
	while (_i < INVENTORY_SLOTS) {
		if (obj_inventory.inventory[i] == _sprite) ds_list_add(_positions, i)
		_i++
	}
	return _positions
}
