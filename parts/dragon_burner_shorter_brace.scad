
module mount() {
    difference() {
        cylinder(h=3, r=2.425, $fn=50);
        translate([0,0,-.5])
        cylinder(h=4, r=1.5, $fn=50);    
    }
}

linear_extrude(3) {
    polygon([
        [13,10.5],
        [13,25],
        [9.5,25],
        [9.5,10.5]
    ]);
};

translate([-1.5, 1.75, 0])
mount();

translate([-1.5, 33.25, 0])
mount();

translate([0, 35/2, 0])
difference() {
    translate([-3, 0, 0])
    cylinder(h=3, r=35/2+.5, $fn=20);
    translate([-3, 0, -.5])
    cylinder(h=6, r=35/2-3, $fn=20);
    
    translate([-50, -35/2, -3])
    cube([50, 50, 10]);
    
    translate([13, -35/2, -3])
    cube([50, 50, 10]);
};