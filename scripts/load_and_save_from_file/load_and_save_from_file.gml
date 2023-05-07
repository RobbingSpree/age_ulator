
function load_save_from_backup(){
	ini_open("save_data.ini");
	
	//save slot 1
	ini_read_real("slot1", "slot_used", 0);
	ini_read_real("slot1", "date", 1);
	ini_read_real("slot1", "month", 1);
	ini_read_real("slot1", "year", 1);
	ini_read_string("slot1", "tag", "Empty Slot");
	//slot 2
	ini_read_real("slot2", "slot_used", 0);
	ini_read_real("slot2", "date", 1);
	ini_read_real("slot2", "month", 1);
	ini_read_real("slot2", "year", 1);
	ini_read_string("slot2", "tag", "Empty Slot");	
	//slot 3
	ini_read_real("slot3", "slot_used", 0);
	ini_read_real("slot3", "date", 1);
	ini_read_real("slot3", "month", 1);
	ini_read_real("slot3", "year", 1);
	ini_read_string("slot3", "tag", "Empty Slot");	
	//slot 4
	ini_read_real("slot4", "slot_used", 0);
	ini_read_real("slot4", "date", 1);
	ini_read_real("slot4", "month", 1);
	ini_read_real("slot4", "year", 1);
	ini_read_string("slot4", "tag", "Empty Slot");	
	
	var flag = ini_read_real("data", "restore_current_date", 0);
	if flag != 0 {
		ini_write_real("data", "date", 27);
		ini_write_real("data", "month", 7);
		ini_write_real("data", "year", 2022);
	}
	ini_close();
}

function save_data_to_backup(){
	ini_open("save_data.ini");
	
	
	
	ini_close();
}

function mark_save_as_closed(){
	ini_open("save_data.ini");
	
	ini_write_real("data", "restore_current_date", 0);
	
	ini_close();
}

function make_backup(){
	//meta data
	ini_write_real("data", "save_exists", 1);
	ini_write_real("data", "restore_current_date", 1);
	ini_write_real("data", "date", 27);
	ini_write_real("data", "month", 7);
	ini_write_real("data", "year", 2022);
	//save slot 1
	ini_write_real("slot1", "slot_used", 0);
	ini_write_real("slot1", "date", 1);
	ini_write_real("slot1", "month", 1);
	ini_write_real("slot1", "year", 1);
	ini_write_string("slot1", "tag", "Empty Slot");
	//slot 2
	ini_write_real("slot2", "slot_used", 0);
	ini_write_real("slot2", "date", 1);
	ini_write_real("slot2", "month", 1);
	ini_write_real("slot2", "year", 1);
	ini_write_string("slot2", "tag", "Empty Slot");	
	//slot 3
	ini_write_real("slot3", "slot_used", 0);
	ini_write_real("slot3", "date", 1);
	ini_write_real("slot3", "month", 1);
	ini_write_real("slot3", "year", 1);
	ini_write_string("slot3", "tag", "Empty Slot");	
	//slot 4
	ini_write_real("slot4", "slot_used", 0);
	ini_write_real("slot4", "date", 1);
	ini_write_real("slot4", "month", 1);
	ini_write_real("slot4", "year", 1);
	ini_write_string("slot4", "tag", "Empty Slot");	
}
