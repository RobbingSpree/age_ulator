if date_check {
	var threshold = 28
	threshold = month_get("birth");
	
	if birth_day > threshold 
		birth_day = 0;
	if birth_day < 0
		birth_day = threshold;
		
	if birth_month > 12
		birth_month = 0;
	if birth_month < 0
		birth_month = 12;
		
	if birth_year < 1950
		birth_year = current_year;
	if birth_year > current_year
		birth_year = 1950;
	
	date_check = false;
	
	//update distance values
	distance_in_days = time_calculation("Day");
	distance_in_weeks = time_calculation("Week");
	distance_in_months = time_calculation("Month");
	distance_in_years = time_calculation("Year");
	distance_random = time_calculation("Other");
}

if keyboard_key_release(vk_space)
	birth_day = 15;