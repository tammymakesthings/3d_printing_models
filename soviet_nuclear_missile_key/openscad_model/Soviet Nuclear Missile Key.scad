//+=========================================================================+
//| Replica Soviet Nuclear Missile Launch Key in OpenSCAD                   |
//| Tammy Cravit, <tammymakesthings@gmail.com>, github.com/tammymakesthings | 
//| Version 1.0, 06/15/2019                                                 |
//+=========================================================================+
// This is a replica of a Soviet Nuclear Missile Launch key, as pictured at
// https://bit.ly/2FdmgBV and https://bit.ly/2INTTLy. Better models of this
// exist on sites like Shapeways, but this was a good fun project for me to
// use to learn some OpenSCAD.


$fn = 100;

union()
{
    ///////////////////////////////////////////////////////////////
    // Key head
    ///////////////////////////////////////////////////////////////
    difference()
    {
        // Outer cylinder
        cylinder(r=27.5, h=18);

        union()
        {
            // Top chamfer
            translate([0, 0, 13])
            cylinder(r1=9.5, r2=17.5, h=6);

            // Hole
            translate([0, 0, -5])
            cylinder(r=13, h=30);

            // Bottom chamfer
            translate([0, 0, 5])
            rotate([0, -180, 0])
            cylinder(r1=9.5, r2=17.5, h=6);
        }
    }

    ///////////////////////////////////////////////////////////////
    // Key Body
    ///////////////////////////////////////////////////////////////
    difference()
    {
        union()
        {
            // Body cylinder
            translate([26, 0, 9])
            {
                rotate([0,90,0])
                cylinder(r=8.75, h=65);
            }

            // Body end cap
            translate([96, 0, 9])
            {
                rotate([0,90,0])
                cylinder(r1=8.75, r2=0.2, h=9, center=true);
            } 

            // Prong
            union()
            {
                // Prong body
                translate([54, 8, 8])
                {
                    rotate([-90,90,0])
                    cylinder(r=2.75, h=10);
                }

                // Prong end cap
                translate([54, 18, 8])
                {
                rotate([-90, 90, 0])
                cylinder(r1=2.75, r2=0.1, h=3);
                }
            }
        }

        // Key prong - hole 1
        rotate([25, 0, 0])
        {
            translate([65, 1.2, 8])
            {
                // color("red")
                rotate([-90,90,0])
                cylinder(r=2.75, h=20);
            }
        }
        
        rotate([50, 0, 0])
        {
            // Key prong - hole 2
            translate([75, 1.2, 8])
            {
                // color("blue")
                rotate([-90,90,0])
                cylinder(r=2.75, h=20);
            }
        }
    }
}