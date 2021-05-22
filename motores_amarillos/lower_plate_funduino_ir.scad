$fn=120;
translate([0,-50,2.3])ballcaster();
 
difference(){
cylinder(d=120,h=3);
translate([39,-27.5,-1])cube(55);
scale([-1,1,1])translate([39,-27.5,-1])cube(55);
translate([44,34,-1])cylinder(d=3.2,h=5);    
translate([-44,34,-1])cylinder(d=3.2,h=5);    
translate([44,-34,-1])cylinder(d=3.2,h=5);    
translate([-44,-34,-1])cylinder(d=3.2,h=5); 
translate([0,-5,0])cylinder(d=16,h=5);
translate([15,11.5,0])cylinder(d=3.2,h=30);    
translate([-15,11.5,0])cylinder(d=3.2,h=30);      
translate([-63.5/2,28,0])cylinder(d=3.2,h=30);      
translate([63.5/2,28,0])cylinder(d=3.2,h=30);
translate([-9,37,0])cylinder(d=2.8,h=4);    
translate([9,37,0])cylinder(d=2.8,h=4);    
}

difference(){
translate([-63.5/2,28,0])cylinder(d=8,h=5.5);      
translate([-63.5/2,28,0])cylinder(d=3.2,h=30);      
}

difference(){
translate([63.5/2,28,0])cylinder(d=8,h=5.5);      
translate([63.5/2,28,0])cylinder(d=3.2,h=30);      
}

module ballcaster(){
difference(){
union(){
cylinder(d=14,h=10);
translate([0,0,10])cylinder(r1=7, r2=6, h=1);
}
translate([0,0,7])cylinder(d=9.8,h=25);
translate([0,0,7.9])sphere(d=10.8);
translate([0,0,12])cube(size=[3,15,16],center=true);
}
}
