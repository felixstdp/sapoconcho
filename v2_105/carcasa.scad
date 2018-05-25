$fn=150;
    
difference(){
cylinder(d=105,h=31.5);

translate([0,0,-1])cylinder(d=102,h=31);

cube(size=[120,36,5],center=true);
translate([0,0,5])rotate([0,90,0])
    cylinder(d=36,h=120,center=true);
    
translate([37,25,0])cylinder(d=3.2,h=70,center=true);
translate([-37,25,0])cylinder(d=3.2,h=70,center=true);
translate([0,-45,0])cylinder(d=3.2,h=70,center=true);

translate([0,0,20])rotate([0,0,-40])rotate([90,0,0])
{    
translate([13,0,0])
    cylinder(d=16.5,h=60);
translate([-13,0,0])
    cylinder(d=16.5,h=60);
}

translate([0,0,20])rotate([0,0,40])rotate([90,0,0])
{    
translate([13,0,0])
    cylinder(d=16.5,h=60);
translate([-13,0,0])
    cylinder(d=16.5,h=60);
}

translate([-32,-3,31])
linear_extrude(height=1){
text("sapoconcho",font="Calibri",size=10);
}
}
