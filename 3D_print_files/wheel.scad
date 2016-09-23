// Rueda de 32mm (con junta tórica) para Sapoconcho
// o cualquier micromotor de 3mm de eje
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
