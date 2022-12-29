if y != dy {
	y = lerp(y,dy,0.1);
	if abs(y - dy) < 5
		y = dy;
}

//keyboard input
str = keyboard_string;

if keyboard_check_released(vk_enter) {
	var target = target_slot;
	var s = str;
	with(sav_slot)
		if slot == target
			name_of_slot = s;
	instance_destroy(self);
}
	