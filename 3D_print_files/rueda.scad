// Rueda de 32mm (con junta tórica) para Sapoconcho
// o cualquier micromotor de 3mm de eje

union()
{
    difference()
    {

        // base de la rueda con cuatro capas
        union()
        {
            r_ext=15;
            cylinder(h=1,r1=r_ext,r2=r_ext,$fn=40);
            translate([0,0,1])
            cylinder(h=1,r1=r_ext,r2=r_ext-1,$fn=40);
            translate([0,0,2])
            cylinder(h=1,r1=r_ext-1,r2=r_ext,$fn=40);
            translate([0,0,3])
            cylinder(h=1,r1=r_ext,r2=r_ext,$fn=40);
            translate([0,0,4])
            cylinder(h=3,r1=3.6,r2=3.6,$fn=16);
        }
        
        // eje para el motor (3mm)
        r_eje=1.5; //aumentar segun impresora
        translate([0,0,-1])
        cylinder(h=9,r1=r_eje,r2=r_eje,$fn=20);
        
        // agujeros para aligerar el diseño
        r=8.2;    
        translate([0,r,-1]) scale([1.2,0.9,1])
        cylinder(h=6,r1=5,r2=5,$fn=20);
        translate([0,-r,-1]) scale([1.2,0.9,1])
        cylinder(h=6,r1=5,r2=5,$fn=20);
        translate([-r,0,-1]) scale([0.9,1.2,1])
        cylinder(h=6,r1=5,r2=5,$fn=20);
        translate([r,0,-1]) scale([0.9,1.2,1])
        cylinder(h=6,r1=5,r2=5,$fn=20);
    
        // hendidura lateral del eje
        translate([-.4,-4,-1]) scale ([.2,1,3])
        cube(4);
    }

    // muesca del eje (0.5mm)
    translate([0,1.4375,3.5]) scale ([1,.125,1.75]) //modificar el y del translate segun impresora
    cube(4,center=true);
}
