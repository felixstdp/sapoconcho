difference()
{
minkowski($fn=30){
cube([46.1,22,5],center=true);
cylinder(d=2,h=0.0001);
}
translate([0,0,1.5])cube([45.5,25,5],center=true);
    
translate([13,0,-5])cylinder(d=17,h=5,$fn=60);
translate([-13,0,-5])cylinder(d=17,h=5,$fn=60);
hull(){
translate([-3.5,8,-5])cylinder(d=4,h=5,$fn=60);
translate([3.5,8,-5])cylinder(d=4,h=5,$fn=60);
}
hull(){
translate([-3.5,-8,-5])cylinder(d=4,h=5,$fn=60);
translate([3.5,-8,-5])cylinder(d=4,h=5,$fn=60);
}
}
translate([-7.5,10,-2.5])cube([15,5,1.5]);
difference(){
translate([-7.5,14,-2.5])cube([15,1.5,8]);
translate([0,0,2.5])rotate([-90,0,0])
cylinder(d=3.2,h=20,$fn=30);
}
translate([23.2,9,1.7])sphere(0.8,$fn=20);
translate([23.2,-9,1.7])sphere(0.8,$fn=20);
translate([-23.2,9,1.7])sphere(0.8,$fn=20);
translate([-23.2,-9,1.7])sphere(0.8,$fn=20);

translate([9.5,12.5,-2.5])rotate([0,0,180])acuerdo();
translate([-9.5,12.5,-2.5])rotate([0,0,-90])acuerdo();

translate([-7.5,13,0])scale([10,.5,.5])
rotate([0,90,0])acuerdo();

module acuerdo(){
difference(){
cube([2,2,1.5]);
cylinder(d=4,h=2,$fn=30);
}
}
