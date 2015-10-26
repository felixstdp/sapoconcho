// Rueda de 32mm (con junta tórica) para Sapoconcho
// o cualquier micromotor de 3mm de eje

union()
{
    difference()
    {
        union()
        {
        // base de la rueda con cuatro capas
            cylinder(h=1,r1=15,r2=15,$fn=40);
            translate([0,0,1])
            cylinder(h=1,r1=15,r2=14,$fn=40);
            translate([0,0,2])
            cylinder(h=1,r1=14,r2=15,$fn=40);
            translate([0,0,3])
            cylinder(h=1,r1=15,r2=15,$fn=40);
        }
        
        // eje para el motor (3mm)
        r_eje=1.5;
        translate([0,0,-1])
        cylinder(h=6,r1=r_eje,r2=r_eje,$fn=20);
        
        // agujeros para aligerar el diseño
        r=8;    
        translate([0,r,-1])
        cylinder(h=6,r1=5,r2=5,$fn=20);
        translate([0,-r,-1])
        cylinder(h=6,r1=5,r2=5,$fn=20);
        translate([-r,0,-1])
        cylinder(h=6,r1=5,r2=5,$fn=20);
        translate([r,0,-1])
        cylinder(h=6,r1=5,r2=5,$fn=20);
    
        // hendidura lateral del eje
        translate([-.4,-4,-1]) scale ([.2,1,1.5])
        cube(4);
    }

    // muesca del eje (0.5mm)
    translate([0,1.4375,2]) scale ([1,.125,1])
    cube(4,center=true);
}
