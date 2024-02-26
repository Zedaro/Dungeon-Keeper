/// @description Hier Beschreibung einfügen

hp = 10
max_hp = hp

width_of_one_hp = healthbar_width / max_hp

healthbar_x = 0
healthbar_y = 0

// healthbar_bar = instance_create_layer(x, y, layer_get_id("popups"), obj_healthbar_bar)
// healthbar_bar.depth = depth - 1
// healthbar_bar.image_xscale = width_of_one_hp * hp

show_debug_message("width_of_one_hp: " + string(width_of_one_hp))
show_debug_message("healthbar_width: " + string(healthbar_width))
show_debug_message("width_of_one_hp * hp: " + string(width_of_one_hp * hp))
