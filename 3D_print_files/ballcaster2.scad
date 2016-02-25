// Soporte de bola loca para Sapoconcho (no paramétrico)

$fn=40;

difference(){

union(){    
    cylinder(r1=6,r2=7,h=1);
    translate([0,0,1])cylinder(r=7,h=11);
    translate([0,0,12])cylinder(r1=7,r2=6,h=1);
}

translate([0,0,8])cube([2,16,12],center=true);
translate([0,0,1])cylinder(r=3,h=5);
translate([0,0,-1])cylinder(r=1,h=5);
translate([0,0,10])sphere(5.5);
translate([0,0,8])cylinder(r=5,h=6);

}
