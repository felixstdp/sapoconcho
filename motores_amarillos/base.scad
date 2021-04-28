$fn=60;

#translate([15,-11.2,3])motorandwheel();
#scale([-1,1,1])translate([15,-11.2,3])motorandwheel();
   
difference(){
cylinder(d=140,h=3);
translate([33,-34,0])cube(68);
scale([-1,1,1])translate([33,-34,0])cube(68);
translate([45,45,-1])cylinder(d=3.2,h=5);    
translate([-45,45,-1])cylinder(d=3.2,h=5);    
translate([45,-45,-1])cylinder(d=3.2,h=5);    
translate([-45,-45,-1])cylinder(d=3.2,h=5);    
}

difference(){
translate([-15,11,3])cube([30,15,22.35]);
translate([-12,16,-10])cube([24,11,50]);
translate([0,20.6,5.465])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
translate([0,20.6,22.885])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
}

module motorandwheel(){
    difference(){
        cube([18.7,64.5,22.3]);
        translate([0,31.8,2.4])rotate([0,90,0])
        cylinder(d=3,h=20);
        translate([0,31.8,19.9])rotate([0,90,0])
        cylinder(d=3,h=20);
    }
    translate([19.7,11.2,11.15])rotate([0,90,0])
    cylinder(d=66,h=26.6);
}
