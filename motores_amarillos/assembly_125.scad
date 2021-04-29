$fn=120;

base125();
tapa125();
#translate([20.5,-11.2,3])motorandwheel();
#scale([-1,1,1])translate([20.5,-11.2,3])motorandwheel();
   
color("gray"){
translate([42,36,3])cylinder(d=6,h=25,$fn=6);    
translate([-42,36,3])cylinder(d=6,h=25,$fn=6);    
translate([42,-36,3])cylinder(d=6,h=25,$fn=6);    
translate([-42,-36,3])cylinder(d=6,h=25,$fn=6);  
}

module base125(){
    difference(){
cylinder(d=120,h=3);
translate([38.5,-27.5,-1])cube(55);
scale([-1,1,1])translate([38.5,-27.5,-1])cube(55);
translate([42,36,-1])cylinder(d=3.2,h=5);    
translate([-42,36,-1])cylinder(d=3.2,h=5);    
translate([42,-36,-1])cylinder(d=3.2,h=5);    
translate([-42,-36,-1])cylinder(d=3.2,h=5);    
}

difference(){
translate([-20.5,6,3])cube([41,20,22.35]);
translate([-12.5,15,-10])cube([25,12,50]);
translate([0,19.1,5.465])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
translate([0,19.1,22.885])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
}
}

module tapa125(){
    translate([0,0,28])
difference(){
cylinder(d=120,h=3);
translate([38.5,-27.5,-1])cube(55);
scale([-1,1,1])translate([38.5,-27.5,-1])cube(55);
translate([42,36,-1])cylinder(d=3.2,h=5);    
translate([-42,36,-1])cylinder(d=3.2,h=5);    
translate([42,-36,-1])cylinder(d=3.2,h=5);    
translate([-42,-36,-1])cylinder(d=3.2,h=5);    
}
}

module motorandwheel(){
    difference(){
        union(){
        cube([18.7,37,22.3]);
        intersection(){
        translate([9.35,37,11.15])
        rotate([-90,0,0])cylinder(d=22.3,h=27.5);
        cube([18.7,65,22.3]);
        }
    }    
        translate([0,30.3,2.4])rotate([0,90,0])
        cylinder(d=3,h=20);
        translate([0,30.3,19.9])rotate([0,90,0])
        cylinder(d=3,h=20);
    }
    translate([35.7,11.2,11.15])rotate([0,-90,0])
    rueda();
}

module rueda(){
    $fn=120;
difference(){
union(){
cylinder(h=2.5,d1=45,d2=50);
translate([0,0,2.5])cylinder(d=50,h=10);
translate([0,0,12.5])cylinder(h=2.5,d2=45,d1=50);
}
translate([0,0,7.5])
rotate_extrude(angle = 360, convexity = 2) {
translate([25.5,0,0])circle(1.25);
}
translate([0,0,3])cylinder(d=42,h=15);

for (i=[0:72:350]){
rotate([0,0,i])
translate([13,0,-1])cylinder(d=12,h=15,$fn=5);
}
}
difference(){
translate([0,0,0.001])cylinder(d=11,h=17);
translate([0,0,9.05])
scale(1.02)    // ajustar según impresora
    intersection(){
cylinder(d=5.5,h=8);
translate([0,0,4])cube([4,6,8],center=true);
    }
}
}
