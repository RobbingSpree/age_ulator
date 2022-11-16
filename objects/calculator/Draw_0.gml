//text setup
draw_set_halign(fa_center);
draw_set_font(font_fnt);
draw_text(heading_location.x,heading_location.y,"IT'S BEEN...");
//draw text for results
draw_text(day_result_location.x,day_result_location.y,distance_in_days);
draw_text(week_result_location.x,week_result_location.y,distance_in_weeks);
draw_text(month_result_location.x,month_result_location.y,distance_in_months);
draw_text(year_result_location.x,year_result_location.y,distance_in_years);
draw_text(rando_result_location.x,rando_result_location.y,distance_random);

//draw text for arrows
draw_sprite_as_number(day_location.x,day_location.y,birth_day);
draw_sprite_as_number(month_location.x,month_location.y,birth_month);
draw_sprite_as_number(year_location.x,year_location.y,birth_year);

