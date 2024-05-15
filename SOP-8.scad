/**
 * @brief  SOP 8
 * @author nimisbert
 * @dims   [mm]
**/
$fn = 20;

W = 5;    // width
L = 4.4;  // length
H = 1.6;  // height
S = 1.27; // pad step

// body 

color("#555555")
difference() {
    body();
    translate([L/2.5,W/4,H/4+0.3])
    cylinder(0.4,0.3,0.3);
}

// pads

for( i = [0.3-L/2:S:0.3+L/2] ) {
        //translate([i,j,-H/2])
        color("#bbbbbb")
        pin([i,-W/1.8,-H/4],[0,0,90]);
        color("#bbbbbb")
        pin([i,W/1.8,-H/4],[0,0,-90]);
        
 
}

module pin(tran=[0,0,0], rot=[0,0,0]) {
    translate(tran)
    rotate(rot)
    {
        rotate([90,0,180])
        translate([-1,0,0])
        rotate_extrude(angle=90)
        translate([0.5,0,0])
        square([0.15,0.4], center=true);

        rotate([-90,0,0])
        rotate_extrude(angle=90)
        translate([0.5,0,0])
        square([0.15,0.4], center=true);

        translate([-0.15,0,-0.5])
        cube([0.4,0.4,0.15],true);
    }
}

module body() {
    intersection() {
    
    cube([W,L,H],true);
    rotate([0,90,0])
    cylinder(h=6,r=2,center=true);
    rotate([0,-90,90])
    cylinder(h=6,r=3.5,center=true);
    rotate([90,90,0])
    cylinder(h=5,r=2.5,center=true);
}

}