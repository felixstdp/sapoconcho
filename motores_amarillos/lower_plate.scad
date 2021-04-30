$fn=120;
translate([0,50,0])ballcaster();
 
difference(){
cylinder(d=120,h=3);
translate([39,-27.5,-1])cube(55);
scale([-1,1,1])translate([39,-27.5,-1])cube(55);
translate([42,36,-1])cylinder(d=3.2,h=5);    
translate([-42,36,-1])cylinder(d=3.2,h=5);    
translate([42,-36,-1])cylinder(d=3.2,h=5);    
translate([-42,-36,-1])cylinder(d=3.2,h=5); 
translate([0,-5,0])cylinder(d=16,h=5);
translate([0,50,0])cylinder(d=14,h=8.5);
translate([15,12,0])cylinder(d=3.2,h=30);    
translate([-15,12,0])cylinder(d=3.2,8,h=30);      
}

module ballcaster(){
difference(){
union(){
cylinder(d=14,h=8.5);
translate([0,0,8.5])cylinder(r1=7, r2=6, h=1);
}
translate([0,0,5.5])cylinder(d=10,h=25);
translate([0,0,6.4])sphere(d=10.8);
translate([0,0,11])cube(size=[3,15,16],center=true);
}
}
