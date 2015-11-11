$fn=120;
gap=0.2;
difference(){

// círculo exterior 90mm
cylinder(d=90,h=2); 

// cajas laterales para las ruedas
translate([-18,35,-1])cube(size=[36,36,14]);
translate([-18,-71,-1])cube(size=[36,36,14]);

// agujero central pasacables    
translate([0,0,-1])cylinder(d=20,h=4); 

// taladros para las ruedas
translate([8.5,25,-1])cylinder(d=2.8,h=15);
translate([8.5,-25,-1])cylinder(d=2.8,h=15);
translate([-8.5,25,-1])cylinder(d=2.8,h=15);
translate([-8.5,-25,-1])cylinder(d=2.8,h=15);

// taladros para la base superior
translate([32,22,-1])cylinder(d=3.2,h=15);
translate([32,-22,-1])cylinder(d=3.2,h=15);
translate([-32,22,-1])cylinder(d=3.2,h=15);
translate([-32,-22,-1])cylinder(d=3.2,h=15);
    
}


// soporte para la bola
translate([38,0,0])
difference(){
    union(){
cylinder(d=14,h=9.5);
translate([0,0,9.5])cylinder(r1=7, r2=6, h=1);

}
translate([0,0,8])cylinder(d=9,h=25);
translate([0,0,7.5])sphere(d=10.8);
translate([0,0,10])cube(size=[3,15,16],center=true);
}
