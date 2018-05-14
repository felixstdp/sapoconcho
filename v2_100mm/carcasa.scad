$fn=72;
    
difference(){
cylinder(d=100,h=30);

translate([0,0,-2])cylinder(d=94,h=30);
translate([0,50,13])cube([50,50,30],center=true);    

cube(size=[120,36,5],center=true);
translate([0,0,5])rotate([0,90,0])
    cylinder(d=36,h=120,center=true);

translate([37,22,-1])cylinder(d=3.2,h=45);
translate([37,-22,-1])cylinder(d=3.2,h=45);
translate([-37,22,-1])cylinder(d=3.2,h=45);
translate([-37,-22,-1])cylinder(d=3.2,h=45);

translate([0,0,18])rotate([0,0,-40])rotate([90,0,0])
{    
translate([13,0,0])
    cylinder(d=16.5,h=60);
translate([-13,0,0])
    cylinder(d=16.5,h=60);
}

translate([0,0,18])rotate([0,0,40])rotate([90,0,0])
{    
translate([13,0,0])
    cylinder(d=16.5,h=60);
translate([-13,0,0])
    cylinder(d=16.5,h=60);
}
}
