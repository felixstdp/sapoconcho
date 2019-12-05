$fn=30;
difference(){
cylinder(d=70,h=2.5,$fn=120);
translate([29,11.5,0])cylinder(d=2.5,h=3);
translate([-29,11.5,0])cylinder(d=2.5,h=3);
translate([-29,-11.5,0])cylinder(d=2.5,h=3);
translate([29,-11.5,0])cylinder(d=2.5,h=3);
translate([0,42.5,0])cube(35,center=true);
translate([0,-42.5,0])cube(35,center=true);
translate([-17,12,0])cube([4,3,4]);
translate([-17,-15,0])cube([4,3,4]);
}

translate([-10,15,2.5])rotate([0,0,90])
difference(){
cube([10,10,5]);
translate([5,-1,6])rotate([-90,0,0])cylinder(d=12,h=12);
}

translate([-10,-25,2.5])rotate([0,0,90])
difference(){
cube([10,10,5]);
translate([5,-1,6])rotate([-90,0,0])cylinder(d=12,h=12);
}

$fn=72;

rotate([0,0,90])translate([0,0,2.5])   
difference(){
union(){
translate([0,28,0])cylinder(d=14,h=8.5);
translate([0,28,8.5])cylinder(r1=7, r2=6, h=1);
}
translate([0,28,5.5])cylinder(d=9.5,h=25);
translate([0,28,6.4])sphere(d=10.5);
translate([0,28,10])cube(size=[3,15,16],center=true);
}

translate([6.25,0,2.5])
difference(){
cube([2,50,5],center=true);
cube([3,30,6],center=true);
}
