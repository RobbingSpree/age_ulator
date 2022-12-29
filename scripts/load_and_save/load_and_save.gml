function create_buttons(slot_index,xx,yy) {
	var xoff = 105;
	var yoff = 50;
	//load button
	var lod = instance_create_layer(xx+xoff,yy+yoff,"Higherer_Instances",load_sav_button);
	lod.parent_slot = slot_index;
	lod.xoffset = xoff;
	//save button
	var sav = instance_create_layer(xx+xoff,yy+yoff*2,"Higherer_Instances",sav_sav_button);
	sav.parent_slot = slot_index;
	sav.xoffset = xoff;
	//delete button
	var del = instance_create_layer(xx+xoff,yy+yoff*3,"Higherer_Instances",del_sav_button);
	del.parent_slot = slot_index;
	del.xoffset = xoff;
}


function load_date_from_slot(slot_target){
	var _mon = 0;
	var _day = 0;
	var _year = 0;
	with (sav_slot) {
		if slot == slot_target {
			_day = sav_date;
			_mon = sav_month;
			_year = sav_year;
		}
	}
	if _mon == 0
		return
	
	calculator.birth_month = _mon;
	calculator.birth_day = _day;
	calculator.birth_year = _year;
	
	//then hide the save menu
	sav_menu.hide = true;
	sav_menu.dx = sav_menu.x_origin;
}
	

function save_data_to_slot(slot_target) {
	var _mon = calculator.birth_month;
	var _day = calculator.birth_day;
	var _year = calculator.birth_year;
	with (sav_slot) {
		if slot == slot_target {
			sav_date = _day;
			sav_month = _mon;
			sav_year = _year;
		}
	}

	//then hide the save menu
	sav_menu.hide = true;
	sav_menu.dx = sav_menu.x_origin;
	var nam = instance_create_layer(room_width/2,-200,"Higher_Instances",save_a_name);
	nam.target_slot = slot_target;
	
}

function del_sav_slot(slot_target){
	with (sav_slot) {
		if slot == slot_target {
			sav_date = 1;
			sav_month = 1;
			sav_year = 1;
			name_of_slot = "Empty Slot";
		}
	}
	
	//then hide the save menu
	sav_menu.hide = true;
	sav_menu.dx = sav_menu.x_origin;	
}