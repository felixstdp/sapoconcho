

//color("green")
{
rotate([180,0,90])base_inf();
translate([0,0,55])rotate([0,180,90])
base_sup();
translate([0,85,10])rotate([90,0,0])
rueda();
translate([0,-85,10])rotate([-90,0,0])
rueda();
translate([0,25,28])rotate([0,180,0])
soporte();
translate([0,-25,28])rotate([0,180,0])
soporte();
}

color("grey"){
translate([22,32,15])pilar();
translate([-22,32,15])pilar();
translate([-22,-32,15])pilar();
translate([22,-32,15])pilar();
translate([38,0,-17])sphere(d=10.5,$fn=60);
translate([0,-43,10])rotate([90,0,0])motor();
translate([0,43,10])rotate([-90,0,0])motor();
}

%translate([-22,32,-1])dotted_line(55);
%translate([-22,-32,-1])dotted_line(55);
%translate([22,-32,-1])dotted_line(55);
%translate([22,32,-1])dotted_line(55);

%translate([8.2,-25,-1])dotted_line(25);
%translate([-8.2,-25,-1])dotted_line(25);
%translate([-8.2,25,-1])dotted_line(25);
%translate([8.2,25,-1])dotted_line(25);

module base_inf(){
    
$fn=72;
gap=0.2;
    
difference(){
union(){
cylinder(d=90,h=2);
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
}

module base_sup(){
    
$fn=120;

difference(){

union(){
cylinder(d=90,h=2);
translate([-34,-11,2])
cube(size=[10,22,6]);   
}

translate([0,8,-1])cylinder(d=20,h=4);

translate([32,22,-1])cylinder(d=3.2,h=15);
translate([32,-22,-1])cylinder(d=3.2,h=15);
translate([-32,22,-1])cylinder(d=3.2,h=15);
translate([-32,-22,-1])cylinder(d=3.2,h=15);

//translate([0,-10,0])

translate([-32,-6.9,2])
cube(size=[6.8,13.8,6]); 

translate([-26,-4.25,2])
cube(size=[7,8.5,6]); 

translate([-29.95,-4,-1])
cube(size=[3.2,8,3]);

}
}

module pilar(){

difference(){
    cylinder(d=5.5,h=25,$fn=6);
    translate([0,0,-1])cylinder(d=3,h=27,$fn=60);
}
}

module rueda(){
$fn=60;
d_eje=3.7;
r_ext=15.5;

union(){
difference() {
union(){
cylinder(h=.8,r1=r_ext,r2=r_ext);
translate([0,0,.8])
cylinder(h=1.2,r1=r_ext,r2=r_ext-1);
translate([0,0,2])
cylinder(h=1.2,r1=r_ext-1,r2=r_ext);
translate([0,0,3.2])
cylinder(h=.8,r1=r_ext,r2=r_ext);
}
translate([0,0,-1])cylinder(h=6,r=r_ext-2);
}        
difference(){
cylinder(h=7,d=10);
translate([0,0,-1])cylinder(h=9,d=d_eje);
}
translate([1.20,-2,0])cube(size=[2,4,7]);
for(i=[0:60:300]){
rotate([0,0,i])translate([2,-0.5,0])cube([12,1,4]);
}
}
}

module motor(){
    
intersection(){
cylinder(d=12,h=12,$fn=60);
cube([12,10,24],center=true);
}
translate([0,0,16])cube([12,10,8],center=true);

translate([0,0,20])rotate([0,0,-15])
difference(){
    cylinder(d=3,h=10,$fn=30);
    translate([6,0,7])
    cube([10,10,10],center=true);
}
    
}

module soporte(){
    $fn=24;
gap=0.2; // parámetro de ajuste según impresora

difference(){
translate([-11.5,-6,0])
    cube(size=[23,12,12]);

translate([-6-gap/2,-7,2])
    cube(size=[12+gap,14,12]);
translate([8+gap,0,-1])cylinder(d=2.8,h=15);
translate([-8-gap,0,-1])cylinder(d=2.8,h=15);
}
}

module dotted_line(l){
    for (i=[1:2:l]){
        translate([0,0,i-1])cylinder(d=.5,h=1);
    }
}
