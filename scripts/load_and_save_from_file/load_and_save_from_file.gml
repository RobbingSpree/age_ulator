// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_save_from_backup(){
	
}

function load_save_to_backup(){
	
}

function make_backup(){
	//meta data
	ini_write_real("data", "save_exists", 1);
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
