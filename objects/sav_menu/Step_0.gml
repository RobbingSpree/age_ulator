//slide in and out of frame
if x != dx {
	x = lerp(x,dx,0.1);
	if abs(x - dx) < 5
		x = dx;
		
	with(parent_button) {
	 if sav_menu.x != x+xoffset
		x = sav_menu.x + xoffset;	
	}
} 
