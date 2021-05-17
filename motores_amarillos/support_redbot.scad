difference(){
cube([5,8,15]);
translate([0,5,10])cube([5,10,1.65]);
translate([2.5,4,0])cylinder(d=2.8,h=8,$fn=24);
}
