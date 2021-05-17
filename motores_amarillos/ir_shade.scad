difference(){
minkowski(){
cube([10,28,9],center=true);
cylinder(d=3,h=0.001,$fn=12);
}
translate([0,-1,1])cube([10.25,30,9],center=true);
translate([0,-15,1])cube([15,30,9],center=true);
translate([0,-4,0])
    cylinder(d=3.2,h=20,center=true,$fn=12);
}

difference()
{
translate([0,-4,-4.5])cylinder(d=10,h=2,$fn=30);
translate([0,-4,-4.5])cylinder(d=3.2,h=2,$fn=12);
}
