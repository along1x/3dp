
module draw_side() {
    translate([5.75, 0, 0])
    rotate([0, -90, 0])
    linear_extrude(5.75) {
        polygon([
            [4,0],
            [10.25, 0],
            [14.75, 4],
            [14.75, 16],
            [13.25, 18],
            [11.5, 18],
            [11.5, 26.5],
            [9.5, 28.5],
            [4, 28.5],
            [0, 24.5],
            [0, 4]
        ]);
    }
}

difference() {
    union() {
        draw_side();

        translate([45.75, 0, 0])
        draw_side();

        translate([0, 4, 4])
        rotate([0, 90, 0])
        cylinder(h=40 + 5.75*2, r=4, $fn=15, center=false);
    }
    
    translate([-.5, 24.2, 7.05])
    rotate([0, 90, 0])
    cylinder(h=40 + 5.75*2 + 1, r=1.5, $fn=30, center=false);
        
    translate([-1, 24.2, 7.05])
    rotate([0, 90, 0])
    cylinder(h=3, r=3, $fn=30, center=false);
        
    translate([40 + 5.75*2 - 2, 24.2, 7.05])
    rotate([0, 90, 0])
    cylinder(h=3, r=3, $fn=30, center=false);
}