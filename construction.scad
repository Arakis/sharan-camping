t = 19; //Thickness
t2 = 12; //Thickness ground
h = 270;

w1 = 1460;
w2 = 1100;

l1 = 780;
l2 = 1200;

l = l1+l2;

v = 50; //verstärkung

bOffset = 0;
bOffset = h+t;

//### Part 1

//Boden
color("green")
translate([0,0,-t+bOffset])
	cube([w1/2,l1,t2]);

color("darkblue")
translate([-w1/2,0,-t+bOffset])
	cube([w1/2,l1,t2]);

//Brett vorne
color("orange")
translate([-w1/2,0,0])
	cube([w1,t,h]);
//Brett hinten
translate([-w1/2,l1-t,0])
	cube([w1,t,h]);

//Brett mitte
translate([-t,t,0])
cube([t, l1-t*2, h]);

//Brett mitte, oben
color("brown")
translate([0,t,h-v])
cube([t, l1-t*2, v]);

color("brown")
translate([t,t,h-v])
cube([w1/2-t, t, v]);

color("brown")
translate([t,l1-t*2,h-v])
cube([w1/2-t, t, v]);

color("brown")
translate([-w1/2,t,h-v])
cube([w1/2-t, t, v]);

color("brown")
translate([-w1/2,l1-t*2,h-v])
cube([w1/2-t, t, v]);

//### Part 2

color("green")
translate([-w2/2,-l2,-t+bOffset])
	cube([w2, l2/2, t2]);
color("blue")
translate([-w2/2,-l2/2,-t+bOffset])
	cube([w2, l2/2, t2]);

//Hinten
translate([-w2/2,-t,0])
	cube([w2, t, h]);

//Links
translate([-w2/2,-l2,0])
	cube([t, l2-t, h]);

//Rechts
translate([w2/2-t,-l2,0])
	cube([t, l2-t, h]);

//Mitte
translate([-t/2,-l2,0])
	cube([t, l2-t, h]);

color("brown")
translate([t/2,-t*2,h-v])
cube([w2/2-(t+t/2), t, v]);

color("brown")
translate([-w2/2+t,-t*2,h-v])
cube([w2/2-(t+t/2), t, v]);

color("brown")
translate([-w2/2+t,-l2,h-v])
cube([t, l2-t*2, v]);

color("brown")
translate([w2/2-t*2,-l2,h-v])
cube([t, l2-t*2, v]);
