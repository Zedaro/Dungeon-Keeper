#macro INVENTORY_SLOTS 32
#macro INVENTORY_WIDTH window_get_width() - 64
#macro INVENTORY_HEIGHT window_get_height() - 64

// row_length = 4
inventory = array_create(INVENTORY_SLOTS, -1)

menus_layer = {
	_id:	layer_get_id("menus"),
	_depth:	layer_get_depth("menus")
}

slots = {
	margin: 16,
	width: 32,
	height: 32,
	xscale: 4,
	yscale: 4,
	_depth: menus_layer._depth - 1
}
slot_width_with_space_right = slots.width * slots.xscale + slots.margin
slot_height_with_space_bottom = slots.height * slots.yscale + slots.margin

// 8*2 = Breite des Rahmens, zweimal
	how_many_slots_fit_per_row = floor((INVENTORY_WIDTH - slots.margin - 8*2) / slot_width_with_space_right)
	how_many_slots_fit_per_column = floor((INVENTORY_HEIGHT - slots.margin - 8*2) / slot_height_with_space_bottom)

for (i = 0; i < INVENTORY_SLOTS; i++) {
	inventory_slot = instance_create_layer(x + slots.margin, y + slots.margin, menus_layer._id, obj_inventory_slot)
	inventory_slot.depth -= 1
	inventory_slot.image_xscale *= 4
	inventory_slot.image_yscale *= 4
	
	// show_debug_message(how_many_slots_fit_per_row)
	// show_debug_message(how_many_slots_fit_per_column)
	
	inventory[i] = inventory_slot
}

number_of_rows = ceil(INVENTORY_SLOTS / how_many_slots_fit_per_row)
for (row = 0; row < number_of_rows; row++) {
	for (
			slot_in_row = 0;
			slot_in_row < how_many_slots_fit_per_row  &&  slot_in_row + row * 8 < INVENTORY_SLOTS;
			slot_in_row++
		) {
		inventory[slot_in_row + row * 8].x += slot_width_with_space_right * slot_in_row
		inventory[slot_in_row + row * 8].y += slot_height_with_space_bottom * row
	}
}