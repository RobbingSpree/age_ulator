// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function time_calculation(flag){
	var time = 0;
	if flag == "Day" time = string(count_days()) + " Days";
	if flag == "Week" time = string(count_days()div 7) + " Weeks and " + string(count_days() mod 7) + " Days";
	if flag == "Month" time = string(count_months()) + " Months";
	if flag == "Year" time = string(count_years()) + " Years";
	if flag == "Other" time = count_rando();
	
	return time;
}

function count_days() {
	var running_total = 1;
	//days in years between
	if birth_year < current_year {
		running_total += 365 * (current_year-birth_year)
		//check for leap years
		for (var i=1; i<current_year-birth_year; i++) {
			if current_year-i mod 4 == 0 && current_year-i mod 1000 != 0 {
				running_total++
			}
		}
	}
	//days in month
	if current_month > birth_month {
		//count days between months
		for (var i=1; i<current_month-birth_month; i++) {
			running_total += month_get("specific",current_month-i);
		}
	} else if current_month < birth_month {
		//count days till end of year from birth date and days from start of year to current date
		for (var i=birth_month; i<13;i++) 
			running_total += month_get("specific",i,birth_year);
		for (var i=0; i<current_month; i++) 
			running_total += month_get("specific",i,current_year);
		}
	//extra days left in months	
	if current_month == birth_month
		running_total += current_day-birth_day;
	else {
		running_total += month_get("birth")-birth_day; //days until end of month
		running_total += current_day; //days from start of current month
	}
		
	return running_total;
}

function count_months() {
	var running_total = 0;
	if current_year-birth_year > 1
		running_total += 12 * (current_year-birth_year-1);
	if current_month < birth_month {
		running_total += 12-birth_month;
		running_total += current_month;
	} else {
		running_total += current_month - birth_month;
	}
	
	//edge case where two half months from the dates add up to make a month
	if month_get("birth") - birth_day + current_day > 30
		running_total++
		
	return running_total;
}

function count_years() {
	var running_total = 0;
	running_total += current_year-birth_year;
	
	if current_month >=birth_month {
		running_total += (current_month-birth_month)/12;
	} else if current_month < birth_month {
		running_total += (12-birth_month)/12;
		running_total += current_month/12;
	}
	running_total += (current_day+(30-birth_day))/365;
	
	return running_total;
}

function count_rando() {
	return 0;
}

function month_get(sw,mm = 0,yy = 0) {
	var val = 28;
	
	if sw == "birth" {
		var mnth = birth_month
		var yr = birth_year
	}else if sw == "current" {
		var mnth = current_month
		var yr = current_year
	} else if sw == "specific"{
		var mnth = mm;
		var yr = yy;
	}
	
	switch (mnth) {
		case month.january: val = 31; break;
		case month.february: val = 28; if yr mod 4 == 0 && yr mod 1000 != 0 {val = 29}; break;
		case month.march: val = 31; break;
		case month.april: val = 30; break;
		case month.may: val = 30; break;
		case month.june: val = 30; break;
		case month.july: val = 31; break;
		case month.august: val = 31; break;
		case month.september: val = 30; break;
		case month.october: val = 31; break;
		case month.november: val = 30; break;
		case month.december: val = 31; break;
	}
	return val;
}