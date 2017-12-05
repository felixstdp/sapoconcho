$fn=72;
    
difference(){

cylinder(d=95,h=2);

translate([37.5,-18,-1])cube(size=[36,36,14]);
translate([-73.5,-18,-1])cube(size=[36,36,14]);

translate([27.5,8,-1])cylinder(d=2.8,h=15);
translate([27.5,-8,-1])cylinder(d=2.8,h=15);
translate([-27.5,8,-1])cylinder(d=2.8,h=15);
translate([-27.5,-8,-1])cylinder(d=2.8,h=15);

translate([35,22,-1])cylinder(d=3.2,h=15);
translate([35,-22,-1])cylinder(d=3.2,h=15);
translate([-35,22,-1])cylinder(d=3.2,h=15);
translate([-35,-22,-1])cylinder(d=3.2,h=15);

translate([-13.97,7.62+8*2.54,-1])pin20mil(12,1.94,10);
translate([-13.97,-7.62+8*2.54,-1])pin20mil(12,1.94,10);

translate([-8.89,7.62,-1])pin20mil(8,1.94,10);
translate([-8.89,-7.62,-1])pin20mil(8,1.94,10);

rotate([0,0,12])translate([0,43,0])cny70();
rotate([0,0,-12])translate([0,43,0])cny70();
rotate([0,0,36])translate([0,43,0])cny70();
rotate([0,0,-36])translate([0,43,0])cny70();

}

module pin20mil(n,d_paso,h_paso)
for (i=[1:n]){
    translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
}

module cny70()
{
    translate([-1.4,-1.4,-1])cylinder(d=1.5,h=4);
    translate([1.4,-1.4,-1])cylinder(d=1.5,h=4);
    translate([1.4,1.4,-1])cylinder(d=1.5,h=4);
    translate([-1.4,1.4,-1])cylinder(d=1.5,h=4);
}
