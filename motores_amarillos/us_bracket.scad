difference()
{
cube([48.1,21.1,5],center=true);
translate([0,0,1.5])cube([45.7,22,5],center=true);
    
translate([13,0,-5])cylinder(d=16.5,h=5,$fn=60);
translate([-13,0,-5])cylinder(d=16.5,h=5,$fn=60);
}
translate([-7,7,-2.5])cube([14,8,1.5]);
difference(){
translate([-7,14,-2.5])cube([14,1.5,8]);
translate([0,0,2])rotate([-90,0,0])
cylinder(d=3.2,h=20,$fn=30);
}
translate([23.2,9,1.7])sphere(0.8,$fn=30);
translate([23.2,-9,1.7])sphere(0.8,$fn=30);
translate([-23.2,9,1.7])sphere(0.8,$fn=30);
translate([-23.2,-9,1.7])sphere(0.8,$fn=30);
