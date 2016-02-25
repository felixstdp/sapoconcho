// base superior del robot educativo Sapoconcho

difference()
{
    cylinder(h=1.5,r1=45,r2=45,$fn=40);
    
    translate([38,0,-0.5])
        cylinder(h=2.5,r1=1.5,r2=1.5,$fn=20);
    translate([-12.5,30.5,-0.5])
        cylinder(h=2.5,r1=1.5,r2=1.5,$fn=20);
    translate([-12.5,-30.5,-0.5])
        cylinder(h=2.5,r1=1.5,r2=1.5,$fn=20);
    translate([-36,10,-0.5])
        cylinder(h=2.5,r1=3,r2=3,$fn=20);
    translate([-36,-10,-0.5])
        cylinder(h=2.5,r1=3,r2=3,$fn=20);
    translate([-36,0,0.5])
        cube(size=[6,20,2.5],center=true);
    
}
