/**
 * @brief  SMD 0805
 * @author nimisbert
 * @dims   [mm]
**/

L = 2.00; // length
W = 1.25; // width
H = 0.55; // height
C = 0.30; // Wrap around length

color("#555555")
cube([W,L,H],true);

color("#bbbbbb")
translate([0,L/2,0])
cube([W+0.01,C+0.01,H+0.01],true);

translate([0,-L/2,0])
color("#bbbbbb")
cube([W+0.01,C+0.01,H+0.01],true);