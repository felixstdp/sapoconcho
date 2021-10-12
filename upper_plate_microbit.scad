$fn=120;
difference(){
union(){
cylinder(d=120,h=3);
translate([-25,-48,0])cylinder(d=8,h=8);
translate([25,-48,0])cylinder(d=8,h=8);
translate([-25,7,0])cylinder(d=8,h=8);
translate([25,7,0])cylinder(d=8,h=8);
}
translate([39,-27.5,-1])cube(55);
scale([-1,1,1])translate([39,-27.5,-1])cube(55);
translate([44,34,-1])cylinder(d=3.2,h=5);    
translate([-44,34,-1])cylinder(d=3.2,h=5);    
translate([44,-34,-1])cylinder(d=3.2,h=5);    
translate([-44,-34,-1])cylinder(d=3.2,h=5);

translate([-25,-48,-1])cylinder(d=3.2,h=10);
translate([25,-48,-1])cylinder(d=3.2,h=10);
translate([-25,7,-1])cylinder(d=3.2,h=10);
translate([25,7,-1])cylinder(d=3.2,h=10);

translate([30,-2,-1])cylinder(d=10,h=10);
    
translate([0,25,-1])cylinder(d=15,h=5);    
translate([0,42,-1])cylinder(d=3.2,h=5);
rotate([0,0,35])translate([0,42,-1])cylinder(d=3.2,h=5);    
rotate([0,0,-35])translate([0,42,-1])cylinder(d=3.2,h=5);    
}
