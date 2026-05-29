// Electric violin parametric placeholder geometry.
// NOT fabrication authority. Scaffold for future CAD authoring.
// Dimensions from electric-violin-design-table.xlsx (4-string baseline).
// Authority: pending_measurement — do not use for fabrication without
// review against family-spec.csv and a measured template.

scale_length_in       = 12.9;
body_length_in        = 14.0;
body_width_in         = 4.5;   // solid-body; narrower than acoustic
body_thickness_in     = 1.375;
neck_width_nut_in     = 1.0;
bridge_height_in      = 1.25;
pickup_cavity_len_in  = 4.0;   // piezo bridge or under-bridge cavity
string_count          = 4;

module body() {
  cube([body_width_in, body_length_in, body_thickness_in]);
}

module neck_tenon() {
  translate([body_width_in * 0.35, body_length_in * 0.85, 0])
    cube([neck_width_nut_in, body_length_in * 0.18, body_thickness_in]);
}

difference() {
  body();
  neck_tenon();
}
