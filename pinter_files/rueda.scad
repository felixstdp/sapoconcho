union()
{
  difference()
  {
    union()
      {
        cylinder(h=1,r1=15,r2=15,$fn=40);
        translate([0,0,1])  cylinder(h=1,r1=15,r2=14,$fn=40);
        translate([0,0,2])  cylinder(h=1,r1=14,r2=15,$fn=40);
        translate([0,0,3])  cylinder(h=1,r1=15,r2=15,$fn=40);
      }
    translate([0,0,-1]) cylinder(h=6,r1=2,r2=2,$fn=40);
    translate([6,6,-1]) cylinder(h=6,r1=4,r2=4,$fn=40);
    translate([6,-6,-1])  cylinder(h=6,r1=4,r2=4,$fn=40);
    translate([-6,6,-1])  cylinder(h=6,r1=4,r2=4,$fn=40);
    translate([-6,-6,-1]) cylinder(h=6,r1=4,r2=4,$fn=40);
  }
  translate([-2,1,0]) cube(4,4,4);
}
