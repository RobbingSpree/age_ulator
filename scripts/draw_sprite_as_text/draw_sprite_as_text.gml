// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_sprite_as_number(x,y,str){
	var wid = sprite_get_width(numbers_spr);
	if str < 100 {
		var dig1 = str div 10;
		var dig2 = str mod 10;
		draw_sprite(numbers_spr,dig1,x-wid/2,y);
		draw_sprite(numbers_spr,dig2,x+wid/2,y);
	} else {
		var dig1 = str div 1000;
		var dig2 = str div 100;
		var dig3 = str div 10;
		var dig4 = str mod 10;
		draw_sprite(numbers_spr,dig1,x-wid*1.5,y);
		draw_sprite(numbers_spr,dig2,x-wid/2,y);
		draw_sprite(numbers_spr,dig3,x+wid/2,y);
		draw_sprite(numbers_spr,dig4,x+wid*1.5,y);
	}
}