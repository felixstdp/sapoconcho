$fn=120;

 
difference(){
cylinder(d=120,h=3);
translate([36,-27.5,-1])cube(55);
scale([-1,1,1])translate([36,-27.5,-1])cube(55);
translate([42,36,-1])cylinder(d=3.2,h=5);    
translate([-42,36,-1])cylinder(d=3.2,h=5);    
translate([42,-36,-1])cylinder(d=3.2,h=5);    
translate([-42,-36,-1])cylinder(d=3.2,h=5); 
cylinder(d=12,h=5);
}

difference(){
translate([-20.5,6,3])cube([41,20,22.35]);
translate([-12.5,15,-10])cube([25,12,50]);
translate([0,19.1,5.465])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
translate([0,19.1,22.885])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
}

