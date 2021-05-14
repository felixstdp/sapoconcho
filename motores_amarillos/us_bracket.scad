difference()
{
minkowski($fn=30){
cube([47,22,5.5],center=true);
cylinder(d=2,h=0.0001);
}
translate([0,0,2])cube([45.6,25,5],center=true);
    
translate([13,0,-5])cylinder(d=17,h=5,$fn=60);
translate([-13,0,-5])cylinder(d=17,h=5,$fn=60);
hull(){
translate([-3.5,8.5,-5])cylinder(d=4,h=5,$fn=60);
translate([3.5,8.5,-5])cylinder(d=4,h=5,$fn=60);
}
hull(){
translate([-3.5,-8,-5])cylinder(d=4,h=5,$fn=60);
translate([3.5,-8,-5])cylinder(d=4,h=5,$fn=60);
}
}

translate([23.2,9,1.95])sphere(0.8,$fn=20);
translate([23.2,-9,1.95])sphere(0.8,$fn=20);
translate([-23.2,9,1.95])sphere(0.8,$fn=20);
translate([-23.2,-9,1.95])sphere(0.8,$fn=20);
translate([9.5,14,-2.5])rotate([0,0,180])acuerdo();
translate([-9.5,14,-2.5])rotate([0,0,-90])acuerdo();

translate([-7.5,11,-2.5])cube([15,7,2]);
difference(){
translate([-7.5,17,-2.5])cube([15,2,9]);
translate([0,0,3])rotate([-90,0,0])
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
