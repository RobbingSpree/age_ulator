hide = true;
x_origin = x;
dx = x;

var clo = instance_create_layer(x+10,y+10,"Higher_Instances",menu_close);
clo.move_to = clo.x;
clo.xoffset = 10;

var yoff = 100;
var xoff = 30;
var sav1 = instance_create_layer(x+xoff,y+yoff,"Higher_Instances",sav_slot);
sav1.move_to = sav1.x;
sav1.xoffset = xoff;
sav1.slot = 1;


var yoff = 340;
var sav2 = instance_create_layer(x+xoff,y+yoff,"Higher_Instances",sav_slot);
sav2.move_to = sav2.x;
sav2.xoffset = xoff;
sav2.slot = 2;


var yoff = 580;
var sav3 = instance_create_layer(x+xoff,y+yoff,"Higher_Instances",sav_slot);
sav3.move_to = sav3.x;
sav3.xoffset = xoff;
sav3.slot = 3;


var yoff = 820;
var sav4 = instance_create_layer(x+xoff,y+yoff,"Higher_Instances",sav_slot);
sav4.move_to = sav4.x;
sav4.xoffset = xoff;
sav4.slot = 1;
