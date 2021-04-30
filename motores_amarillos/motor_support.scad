$fn=30;

difference(){
translate([-20.5,6,0])cube([41,20,22.35]);
translate([-12.5,15,-10])cube([25,12,50]);
translate([0,19.1,2.465])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
translate([0,19.1,19.885])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
translate([15,12,0])cylinder(d=2.8,h=30);    
translate([-15,12,0])cylinder(d=2.8,h=30);    
}
