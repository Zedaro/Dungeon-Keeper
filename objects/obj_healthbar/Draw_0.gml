/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

draw_sprite(spr_healthbar_frame, 0, healthbar_x, healthbar_y)
draw_sprite_stretched(spr_healthbar_bar_orange, 0, healthbar_x, healthbar_y, width_of_one_hp * hp, healthbar_height)

if hp <= 0 {
	instance_destroy(self)
}


