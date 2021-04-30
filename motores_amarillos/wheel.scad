$fn=120;
difference(){
union(){
cylinder(h=2.5,d1=45,d2=50);
translate([0,0,2.5])cylinder(d=50,h=10);
translate([0,0,12.5])cylinder(h=2.5,d2=45,d1=50);
}
translate([0,0,7.5])
rotate_extrude(angle = 360, convexity = 2) {
translate([25.5,0,0])circle(1.6);
}
translate([0,0,3])cylinder(d=42,h=15);

for (i=[0:72:350]){
rotate([0,0,i])
translate([13,0,-1])cylinder(d=12,h=15,$fn=5);
}
}
difference(){
cylinder(d=11,h=17.5);
translate([0,0,9.05])
scale(1.05)    // ajustar según impresora
    intersection(){
cylinder(d=5.35,h=9);
translate([0,0,4])cube([3.7,6,9],center=true);
    }
}
