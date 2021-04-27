$fn=60;

   
difference(){
cylinder(d=120,h=3);
translate([28,-25,0])cube(50);    
}

difference(){
translate([-10,15,3])cube([20,15,22.35]);
translate([-7,20,-10])cube([14,11,50]);
translate([0,25,5.465])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
translate([0,25,22.885])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
}
