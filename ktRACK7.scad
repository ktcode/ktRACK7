//
// ktRACK6
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

Y = 15;

A();
translate([35, 0, 0]) B();

module A()
{
difference()
{
    union()
    {
        translate([0, 3.5, -8.6]) rotate([20, 0, 0]) cylinder(Y, d=30, $fn=100);
    }
    translate([7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=3, d2=5, $fn=100);
    translate([7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=5, d2=5, $fn=100);
    translate([-7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=3, d2=5, $fn=100);
    translate([-7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=5, d2=5, $fn=100);
    translate([-50, -50, -20]) cube([100, 100, 20]);
}
}

module B()
{
difference()
{
    union()
    {
        translate([0, 0, -8.6]) rotate([0, 0, 0]) cylinder(Y, d=30, $fn=100);
    }
    translate([7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=3, d2=5, $fn=100);
    translate([7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=5, d2=5, $fn=100);
    translate([-7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=3, d2=5, $fn=100);
    translate([-7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=5, d2=5, $fn=100);
    translate([-50, -50, -20]) cube([100, 100, 20]);
}
}