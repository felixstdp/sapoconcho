$fn=120;
gap=0.2;
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
