/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

depth = -y

popup =  instance_create_layer(x, y - 55, layer_get_id("popups"), obj_keyboard_e)
popup.visible = false

healthbar = instance_create_layer(x, y - 35, layer_get_id("healthbars"), obj_healthbar)
healthbar.healthbar_x = x - healthbar.healthbar_width / 2
healthbar.healthbar_y = y - 35
healthbar.visible = false