//
// ktRACK7
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

Y = 40;

A();
translate([48, 0, 0]) B();
translate([80, 0, 0]) C();

module A()
{
difference()
{
    //union()
    //{
    //    translate([0, -6, 14.5]) rotate([45, 182, 180]) cylinder(Y, d=40, $fn=100);
    //}
    AA();
    translate([7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=4, d2=6.5, $fn=100);
    translate([7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=6.5, d2=6.5, $fn=100);
    translate([-7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=4, d2=6.5, $fn=100);
    translate([-7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=6.5, d2=6.5, $fn=100);
    //translate([-50, -50, -30]) cube([100, 100, 30]);
    //translate([0, -6, 0]) ADEL();

}
}
module AA()
{
difference()
{
    union()
    {
        translate([0, -6, 14.5]) rotate([45, 182, 180]) cylinder(Y, d=40, $fn=100);
    }
    //translate([7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=4, d2=6.5, $fn=100);
    //translate([7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=6.5, d2=6.5, $fn=100);
    //translate([-7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=4, d2=6.5, $fn=100);
    //translate([-7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=6.5, d2=6.5, $fn=100);
    translate([-50, -50, -30]) cube([100, 100, 30]);
    translate([0, -6, 0]) ADEL();

}
}

module ADEL()
{
difference()
{
    union()
    {
        translate([-50, 0, -gap1]) cube([100, 50, 40]);
    }
    translate([0, 0, -gap1-gap1]) cylinder(40+gap2+gap1, d=40, $fn=100);

}
}


module B()
{
difference()
{
    union()
    {
        translate([0, 0, -8.6]) rotate([-5, 7, 0]) cylinder(20, d=40, $fn=100);
    }
    translate([7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=4, d2=6.5, $fn=100);
    translate([7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=6.5, d2=6.5, $fn=100);
    translate([-7.5, 0, -gap1]) cylinder(panel_thick+gap2, d1=4, d2=6.5, $fn=100);
    translate([-7.5, 0, panel_thick-gap1]) cylinder(Y*2, d1=6.5, d2=6.5, $fn=100);
    translate([-50, -50, -20]) cube([100, 100, 20]);
}
}


module C()
{
difference()
{
    union()
    {
        cube([50, 30, 10]);
        translate([0, 0, 5]) rotate([0, 90, 0]) cylinder(50, d=10, $fn=100);
        translate([0, 30, 5]) rotate([0, 90, 0]) cylinder(50, d=10, $fn=100);
        translate([0, -5, 10/2]) cube([50, 30+10, 10/2]);
    }
    translate([-gap1, 5, 10/2]) rotate([0, 90, 0]) cylinder(panel_thick+gap2, d1=4, d2=6.5, $fn=100);
    translate([panel_thick, 5, 10/2]) rotate([0, 90, 0]) cylinder(50, d1=6.5, d2=6.5, $fn=100);
    translate([-gap1, 30-5, 10/2]) rotate([0, 90, 0]) cylinder(panel_thick+gap2, d1=4, d2=6.5, $fn=100);
    translate([panel_thick, 30-5, 10/2]) rotate([0, 90, 0]) cylinder(50, d1=6.5, d2=6.5, $fn=100);
}
translate([28, 18, 10]) AA();
}