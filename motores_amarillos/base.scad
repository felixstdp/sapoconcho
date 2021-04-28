$fn=60;

#translate([10,-11.2,3])motorandwheel();
#scale([-1,1,1])translate([10,-11.2,3])motorandwheel();
   
difference(){
cylinder(d=120,h=3);
translate([28,-34,0])cube(68);    
}

difference(){
translate([-10,11,3])cube([20,15,22.35]);
translate([-7,16,-10])cube([14,11,50]);
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
