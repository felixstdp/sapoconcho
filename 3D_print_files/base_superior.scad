// Proyecto Sapoconcho KIS (Keep It Simple)
// chasis superior para Arduino y sensores 

$fn=120;
gap=0.2;
difference(){

// círculo exterior 90mm
cylinder(d=90,h=2); 

// agujero central pasacables    
translate([0,0,-1])cylinder(d=20,h=4); 

// taladros para la base superior
translate([32,22,-1])cylinder(d=3.2,h=15);
translate([32,-22,-1])cylinder(d=3.2,h=15);
translate([-32,22,-1])cylinder(d=3.2,h=15);
translate([-32,-22,-1])cylinder(d=3.2,h=15);
    
}
