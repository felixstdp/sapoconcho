$fn=120;

difference(){

union(){
cylinder(d=120,h=3);
translate([-24.75,55,0])rotate([0,0,-90]){
translate([13.97,2.5,0])cylinder(d=8,h=6);
translate([15.24,50.7,0])cylinder(d=8,h=6);
translate([66.04,7.6,0])cylinder(d=8,h=6);
translate([66.04,35.5,0])cylinder(d=8,h=6);
}
}

translate([39,-27.5,-1])cube(55);
scale([-1,1,1])translate([39,-27.5,-1])cube(55);
translate([44,34,-1])cylinder(d=3.2,h=5);    
translate([-44,34,-1])cylinder(d=3.2,h=5);    
translate([44,-34,-1])cylinder(d=3.2,h=5);    
translate([-44,-34,-1])cylinder(d=3.2,h=5);
translate([0,-30,-1])cylinder(d=12,h=5);
translate([0,-42,-1])cylinder(d=3.2,h=5);
rotate([0,0,35])translate([0,-42,-1])cylinder(d=3.2,h=5);    
rotate([0,0,-35])translate([0,-42,-1])cylinder(d=3.2,h=5);  

translate([-24.75,55,0])rotate([0,0,-90]){
translate([13.97,2.5,0])cylinder(d=2.9,h=10);
translate([15.24,50.7,0])cylinder(d=2.9,h=10);
translate([14.24,46.2,5])cube(6);
translate([66.04,7.6,0])cylinder(d=2.9,h=10);
translate([66.04,35.5,0])cylinder(d=2.9,h=10);
}

}
