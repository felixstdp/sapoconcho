$fn=120;

difference(){
cylinder(d=90,h=25);
translate([0,0,-1])cylinder(d=88,h=27);
translate([0,0,20])rotate([0,90,0])    
cylinder(d=35,h=100,center=true);
translate([0,0,37.5])    
cube([100,35,35],center=true);
translate([0,0,-1])rotate([0,0,45])
cube([50,50,50]);

for(i=[-45:30:45])
{
rotate([0,0,i])    
{
translate([0,-42,22.25])rotate([90,0,0])
cylinder(d=2.5,h=5); 
translate([0,-42,2.75])rotate([90,0,0])
cylinder(d=2.5,h=5);
translate([0,-45,12.5])   
cube([6,2,15],center=true);   
translate([-4.5*sign(i),-42,6.35])rotate([90,0,0])
pin20mil(6,1,6);

}
}

}

module pin20mil(n,d_paso,h_paso)
for (i=[1:n]){
    translate([0,(i-1)*2.54,0])cylinder(d=d_paso,h=h_paso);
}

$fn=120;
gap=0.2;
rotate([0,0,180])
translate([0,0,-2])
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
