// Ballcaster (part of Escornabot Project)
// (c) 2015, Xoan Sampaiño
//
// Based on BallCasterV2 by PieterBos
// http://www.thingiverse.com/thing:20471
//
// Released under the MIT License

ball_size = 9.7; // ball diameter
airgap = 0.25;    // gap between ball and wall

recess = 11;   // distance from ball to rear
hole_sep = 39; // distance between mounting holes

wall_thickness = 1.5;
total_height = 9.5*1.25-1+4;	// this includes the ball
ball_protrude = 0.30;	// percentage of ball radius sticking out
chamfer = 0.75;

// set fn to false to automatic face number calculation
// useful in some cases (i.e. to import into freecad)
fn = true;



overlap = 1; // to use in some differences

cyl_rad = (ball_size/2) + wall_thickness + airgap;
echo (cyl_rad);

module ball_mount () {
  difference () {
    union() {
      translate([0, 0, chamfer])
        cylinder(r = cyl_rad, h = total_height-(ball_size*ball_protrude)-chamfer*2, $fn = fn ? round(cyl_rad*2)*4 : 0);

      // bottom chamfer
      cylinder(r1 = cyl_rad-chamfer, r2 = cyl_rad, h = chamfer, $fn = fn ? round(cyl_rad*2)*4 : 0);

      // top chamfer
      translate([0, 0, total_height-(ball_size*ball_protrude)-chamfer])
        cylinder(r1 = cyl_rad, r2 = cyl_rad-chamfer, h = chamfer, $fn = fn ? round(cyl_rad*2)*4 : 0);
    }

    translate([0, 0, total_height-ball_size/2])
      for (i = [0])
        rotate([0, 0, i])
          cube(size = [cyl_rad*2+5, cyl_rad/2, ball_size*1.25], center = true );

    translate([0, 0, total_height-(ball_size/2)]) {
      %sphere (ball_size/2, $fn = fn ? ball_size*4 : 0);
      sphere (ball_size/2+airgap, $fn = fn ? ball_size*4 : 0);
    }
  }
}

module base() {
  difference() {
    hull() {
      // base
      translate([(hole_sep+3)/2-4, 0, 0])
        cube([hole_sep+3, 20, 3], center = true);
      // rear screw
      translate([hole_sep, 0, 0])
        cylinder(r = 8/2, h = 3, $fn = fn ? 8*4 : 0, center = true);
    }

    // sides
    for (i = [10,-10])
      translate([0, i, 0])
        cube([(hole_sep+4)*2, 10, 3+overlap], center = true);
  }
}

module base_holes() {
  // front screw hole
  cylinder(r = 3.5/2, h = 3 + overlap, $fn = fn ? round(3.5)*4 : 0, center = true);

  // rear screw hole
  translate([hole_sep, 0, 0])
    cylinder(r = 3.5/2, h = 3 + overlap, $fn = fn ? round(3.5)*4 : 0, center = true);

  // rear screw head
  translate([hole_sep, 0, (20+3)/2])
    cylinder(r = 6.5/2, h = 20, $fn = fn ? round(6.5)*4 : 0, center = true);
}

difference() {
  union() {
    *base();

    //translate([hole_sep-recess,0,-3/2])
      ball_mount();
  }

  *base_holes();
  cylinder(r=3.25/2,h=5,$fn=3*4);
  translate([0,0,2])cylinder(r=6/2,h=10,$fn=6*4);

  *translate([-5,ball_size/2+airgap+wall_thickness-1,0])cube([10,10,15]);
}
