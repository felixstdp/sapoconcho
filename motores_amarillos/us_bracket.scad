difference()
{
minkowski($fn=30){
cube([46.1,19.1,5],center=true);
cylinder(d=2,h=0.0001);
}
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

translate([9,12.5,-2.5])rotate([0,0,180])acuerdo();
translate([-9,12.5,-2.5])rotate([0,0,-90])acuerdo();


module acuerdo(){
difference(){
cube([2,2,1.5]);
cylinder(d=4,h=2,$fn=30);
}
}
