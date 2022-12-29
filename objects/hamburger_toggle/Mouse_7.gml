if instance_exists(sav_menu) && sav_menu.hide = true {
	sav_menu.hide = false;
	sav_menu.dx = x_pos_mark_sav_menu.x;
	if instance_exists(save_a_name) {
		instance_destroy(save_a_name);
	}
}