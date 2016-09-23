$fn=72;
gap=0.2;
    
difference(){
union(){
cylinder(d=90,h=1.5);
translate([0,38,0])cylinder(d=14,h=8.5);
translate([0,38,8.5])cylinder(r1=7, r2=6, h=1);
translate([-31,-12,0])cube(size=[12,24,4]);
translate([19,-12,0])cube(size=[12,24,4]);
}

translate([35,-18,-1])cube(size=[36,36,14]);
translate([-71,-18,-1])cube(size=[36,36,14]);

translate([0,0,-1])cylinder(d=20,h=4);

translate([25,8+gap,-1])cylinder(d=2.8,h=15);
translate([25,-8-gap,-1])cylinder(d=2.8,h=15);
translate([-25,8+gap,-1])cylinder(d=2.8,h=15);
translate([-25,-8-gap,-1])cylinder(d=2.8,h=15);

translate([32,22,-1])cylinder(d=3.2,h=15);
translate([32,-22,-1])cylinder(d=3.2,h=15);
translate([-32,22,-1])cylinder(d=3.2,h=15);
translate([-32,-22,-1])cylinder(d=3.2,h=15);

translate([-22,-37,-1])cube(size=[7.5,7.5,4]);
translate([14.5,-37,-1])cube(size=[7.5,7.5,4]);

translate([0,38,5.5])cylinder(d=9.5,h=25);
translate([0,38,6.4])sphere(d=10.5);
translate([0,38,10])cube(size=[3,15,16],center=true);


}
