$fn=72;
    
difference(){
union(){
cylinder(d=105,h=2);
translate([0,45,0])cylinder(d=14,h=8.5);
translate([0,45,8.5])cylinder(r1=7, r2=6, h=1);
translate([-32,0,2])cube(size=[12,24,4],center=true);
translate([32,0,2])cube(size=[12,24,4],center=true);
}

translate([60,0,-1])cube(size=[36,36,14],center=true);
translate([-60,0,-1])cube(size=[36,36,14],center=true);

translate([32,8.2,-1])cylinder(d=2.8,h=15);
translate([32,-8.2,-1])cylinder(d=2.8,h=15);
translate([-32,8.2,-1])cylinder(d=2.8,h=15);
translate([-32,-8.2,-1])cylinder(d=2.8,h=15);

translate([37,25,-1])cylinder(d=3.2,h=15);
//translate([37,-22,-1])cylinder(d=3.2,h=15);
translate([-37,25,-1])cylinder(d=3.2,h=15);
//translate([-37,-22,-1])cylinder(d=3.2,h=15);
translate([0,-45,-1])cylinder(d=3.2,h=15);

for (giro=[-45:30:45]){
    rotate([0,0,giro])
    translate([0,-47,1]){
    translate([1.26,1.4,0])
    cylinder(d=2,h=6,center=true);
    translate([-1.26,1.4,0])
    cylinder(d=2,h=6,center=true);
    translate([-1.26,-1.4,0])
    cylinder(d=2,h=6,center=true);
    translate([1.26,-1.4,0])
    cylinder(d=2,h=6,center=true);
    }
}

translate([0,45,5.5])cylinder(d=9.5,h=25);
translate([0,45,6.4])sphere(d=10.5);
translate([0,45,10])cube(size=[3,15,16],center=true);

translate([0,-25,0]){

translate([-6.35,22.77,-1])pin20mil(6,1.94,10);
translate([-6.35,38.1,-1])pin20mil(6,1.94,10);
translate([-13.97,15.24,-1])pin20mil(12,1.94,10);
translate([-13.97,0,-1])pin20mil(12,1.94,10);
}

rotate([0,0,30])translate([-3.81,-35,-1])pin20mil(4,1.94,10);
rotate([0,0,-30])translate([-3.81,-35,-1])pin20mil(4,1.94,10);

}

module pin20mil(n,d_paso,h_paso)
for (i=[1:n]){
    translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
}
