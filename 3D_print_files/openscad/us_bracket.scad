$fn=120;
difference(){

union(){

cube(size=[48,25,1.5],center=true);
translate([0,11.75,2.25])
cube(size=[24,1.5,6],center=true);    
translate([0,11.75,5.25])
cube(size=[12,1.5,12],center=true);    
translate([0,11.75,5.25])
rotate([90,0,0]){
translate([6,0,0])
    cylinder(d=12,h=1.5,center=true);
translate([-6,0,0])
    cylinder(d=12,h=1.5,center=true);
}
}
    
translate([13,-2,-1])
    cylinder(d=16.5,h=3);
translate([-13,-2,-1])
    cylinder(d=16.5,h=3);



translate([0,0,6])
rotate([90,0,0]){
translate([6,0,0])
    cylinder(d=3.5,h=30,center=true);
translate([-6,0,0])
    cylinder(d=3.5,h=30,center=true);

}
}
