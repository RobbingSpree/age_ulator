draw_self();
draw_set_halign(fa_center);

draw_text(x+sprite_width/2,y+10,name_of_slot);
var date_combine = string(sav_date)+" / " + string(sav_month)+" / " + string(sav_year);
draw_text(x+sprite_width/2,y+40,date_combine);