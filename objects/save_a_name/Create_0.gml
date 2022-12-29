dy = room_height/2;
image_xscale = 5;
image_yscale = 3;
target_slot = 0;
str = "";
keyboard_string = "";
x = room_width/2 - sprite_width/2;

//for android
if os_type == os_android {
	display_set_gui_size(display_get_width(), display_get_height());
	
	if keyboard_virtual_status() == false {
	    keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, false);
	}
}

display_str = "Type a name for the date"

