size = 4;
$fn = 100;
difference() {
union(){
    translate([size, 0, 0]){
        cylinder(r=size, h=size*2, center=true);
    }
    translate([-size, 0, 0]){
      rotate([90, 0, 0]) {
        cylinder(r=size, h=size*2, center=true);
      }
    }
    cube(size*2, center=true);
    }
translate([size, 0, 0]){
    cylinder(r=size-1, h=size*2+1, center=true);
}
translate([-size, 0, 0]){
  rotate([90, 0, 0]) {
      cylinder(r=size-1, h=size*2+1, center=true);
  }
}
}