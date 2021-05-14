difference()
{
minkowski($fn=30){
cube([45.5,20,6],center=true);
cylinder(d=4,h=0.000001);
}
translate([0,0,2])cube([45.6,25,5],center=true);
    
translate([13,0,-5])cylinder(d=17,h=5,$fn=60);
translate([-13,0,-5])cylinder(d=17,h=5,$fn=60);
hull(){
translate([-3.5,7.5,-5])cylinder(d=4,h=5,$fn=60);
translate([3.5,7.5,-5])cylinder(d=4,h=5,$fn=60);
}
hull(){
translate([-3.5,-8,-5])cylinder(d=4,h=5,$fn=60);
translate([3.5,-8,-5])cylinder(d=4,h=5,$fn=60);
}
}
hull(){
translate([23,9,1.9])sphere(0.8,$fn=20);
translate([23,-9,1.9])sphere(0.8,$fn=20);
}
hull(){
translate([-23,9,1.9])sphere(0.8,$fn=20);
translate([-23,-9,1.9])sphere(0.8,$fn=20);
}
translate([9.5,14,-2.5])rotate([0,0,180])acuerdo();
translate([-9.5,14,-2.5])rotate([0,0,-90])acuerdo();

translate([-7.5,12,-3])cube([15,7,2.5]);
difference(){
translate([-7.5,17,-2.5])cube([15,2.5,11]);
translate([0,0,4])rotate([-90,0,0])
cylinder(d=3.2,h=20,$fn=30);
}
translate([-7.5,15,1.5])scale([7.5,1,1])
rotate([0,90,0])acuerdo();

module acuerdo(){
difference(){
cube(2);
cylinder(d=4,h=2,$fn=30);
}
}
