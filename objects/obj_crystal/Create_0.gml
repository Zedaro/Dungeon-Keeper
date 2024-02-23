/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

depth = -y

popup =  instance_create_layer(x, y - 35, layer_get_id("popups"), obj_keyboard_e)
popup.visible = false

healthbar = instance_create_layer(x, y - 35, layer_get_id("popups"), obj_healthbar)
healthbar.x -= healthbar.healthbar_width / 2
healthbar.visible = true
