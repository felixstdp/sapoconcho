$fn=120;

#translate([18,-11.2,3])motorandwheel();
#scale([-1,1,1])translate([18,-11.2,3])motorandwheel();
   
difference(){
cylinder(d=120,h=3);
translate([36,-27.5,-1])cube(55);
scale([-1,1,1])translate([36,-27.5,-1])cube(55);
translate([42,36,-1])cylinder(d=3.2,h=5);    
translate([-42,36,-1])cylinder(d=3.2,h=5);    
translate([42,-36,-1])cylinder(d=3.2,h=5);    
translate([-42,-36,-1])cylinder(d=3.2,h=5);    
}

translate([0,0,28])
difference(){
cylinder(d=120,h=3);
translate([36,-27.5,-1])cube(55);
scale([-1,1,1])translate([36,-27.5,-1])cube(55);
translate([42,36,-1])cylinder(d=3.2,h=5);    
translate([-42,36,-1])cylinder(d=3.2,h=5);    
translate([42,-36,-1])cylinder(d=3.2,h=5);    
translate([-42,-36,-1])cylinder(d=3.2,h=5);    
}
color("gray"){
translate([42,36,3])cylinder(d=6,h=25,$fn=6);    
translate([-42,36,3])cylinder(d=6,h=25,$fn=6);    
translate([42,-36,3])cylinder(d=6,h=25,$fn=6);    
translate([-42,-36,3])cylinder(d=6,h=25,$fn=6);  
}

difference(){
translate([-18,6,3])cube([36,20,22.35]);
translate([-9.5,15,-10])cube([19,12,50]);
translate([0,19.1,5.465])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
translate([0,19.1,22.885])rotate([0,90,0])
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
    cylinder(d=50,h=15);
}
