// Electric violin — parametric master (solid-body, 4-string baseline; 5-string variant).
//
// Authority: pending_measurement. NOT fabrication authority until reviewed
// against a measured prototype and family-spec.csv gates (see
// visual-output-register.csv VIS-009 and validation.csv). String tensions,
// neck set/break angle, bridge fit, and the sculpted body outline are all
// measurement_required — see family-spec.csv (dimension_provenance =
// measurement_required) and design.md.
//
// Dimension sources (do not edit values without updating the source record):
//   - scale (vibrating string) length 328 mm: family-spec.csv EV-4S baseline
//     (scale_mm). AUTHORITATIVE for the family. design-table BUILD METHOD
//     step 1 corroborates "328 mm (13 in)".
//   - string count 4 (baseline) / 5 (variant): family-spec.csv.
//   - body blank 2 x 8 x 16 in (50.8 x 203.2 x 406.4 mm): design-table BOM row 1.
//   - body target thickness 2 in (50 mm): design-table step 4.
//   - body length ~14 in (~356 mm): design-table geometry note (§3 / step 2).
//   - neck nut-to-body-joint 130 mm: design-table step 2.
//   - nut width 24 mm (4-string): design-table BOM row 9 (neck ~21 mm at nut
//     per step 14 is a profile depth, not width).
//   - fingerboard 1/4 x 1.25 x 11 in, radius 42 mm at nut: design-table BOM row 3.
//   - piezo recess under bridge (shallow): design-table step 8 — depth per
//     pickup (assumption below, measurement_required).
//   - body OUTLINE: skeletal/sculpted, style-open. The block envelope below is a
//     NON-AUTHORITATIVE placeholder only (design-table §3 "often skeletal").
//
// Units: millimetres. Datum: nut face at y = 0; +y toward the bridge/tailpiece;
// body centerline = y axis.

in2mm = 25.4;

/* [Variant] */
// 0 = 4-string baseline (family-spec active), 1 = 5-string variant
variant = 0;
string_counts = [4, 5];
string_count  = string_counts[variant];

/* [Scale + strings — AUTHORITATIVE from family-spec.csv] */
scale_length_mm = 328;      // vibrating length, nut to bridge (EV-4S / EV-5S)
nut_width_mm     = 24;      // design-table BOM row 9 (4-string); +TBD for 5-string
string_spacing_mm = nut_width_mm / (string_count + 1); // even spacing (assumption)

/* [Body blank — design-table BOM row 1 (stock, AUTHORITATIVE size)] */
blank_thickness_mm = 2.0 * in2mm;   // 50.8 mm (target 50 mm surfaced, step 4)
blank_width_mm     = 8.0 * in2mm;   // 203.2 mm
blank_length_mm    = 16.0 * in2mm;  // 406.4 mm

/* [Body envelope — NON-AUTHORITATIVE placeholder (skeletal/sculpted, style-open)] */
body_length_mm    = 14.0 * in2mm;   // ~356 mm design-table geometry note
body_width_mm     = 4.5 * in2mm;    // placeholder solid-body waist; outline TBD
body_thickness_mm = blank_thickness_mm;

/* [Neck + fingerboard — design-table steps 2/14, BOM row 3] */
neck_join_from_nut_mm = 130;        // design-table step 2
fb_length_mm   = 11.0 * in2mm;      // 279.4 mm
fb_width_mm    = 1.25 * in2mm;      // 31.75 mm
fb_thick_mm    = 0.25 * in2mm;      // 6.35 mm
fb_radius_mm   = 42;                // radius at nut, design-table BOM row 3
neck_depth_nut_mm  = 21;            // design-table step 14 (profile depth)
neck_depth_body_mm = 23;            // design-table step 14

/* [Bridge + electronics — measurement_required (assumptions for layout)] */
piezo_recess_len_mm   = 40;    // shallow under-bridge pocket; depth per pickup
piezo_recess_wid_mm   = 12;
piezo_recess_depth_mm = 3;     // assumption; measurement_required (step 8)
elec_pocket_len_mm    = 60;    // volume pot + jack stack (assumption, step 9)
elec_pocket_wid_mm    = 40;
elec_pocket_depth_mm  = 30;    // assumption; measurement_required

// ---------------------------------------------------------------------------
// Derived datum geometry (formulas, not baked placement)
// ---------------------------------------------------------------------------

bridge_from_nut_mm  = scale_length_mm;                   // bridge on scale line
bridge_from_join_mm = scale_length_mm - neck_join_from_nut_mm; // 198 mm
// Body sits so its upper (neck-joint) edge is at the neck/body joint.
body_center_y = neck_join_from_nut_mm + body_length_mm / 2;

module body_envelope() {
  // Placeholder solid-body block (NON-AUTHORITATIVE outline).
  translate([-body_width_mm / 2, neck_join_from_nut_mm, -body_thickness_mm / 2])
    cube([body_width_mm, body_length_mm, body_thickness_mm]);
}

module fingerboard() {
  // From nut (+y) over the neck; radiused top face approximated by a cylinder cut.
  translate([-fb_width_mm / 2, 0, 0])
    difference() {
      cube([fb_width_mm, fb_length_mm, fb_thick_mm]);
      translate([fb_width_mm / 2, -1, fb_thick_mm + fb_radius_mm - 0.6])
        rotate([-90, 0, 0])
          cylinder(h = fb_length_mm + 2, r = fb_radius_mm, $fn = 96);
    }
}

module neck_blank() {
  // Tapered neck depth nut->body per design-table step 14; under the fingerboard.
  hull() {
    translate([0, 0, -neck_depth_nut_mm])
      cube([nut_width_mm, 0.01, neck_depth_nut_mm], center = false);
    translate([0, neck_join_from_nut_mm - 0.01, -neck_depth_body_mm])
      cube([nut_width_mm + 6, 0.01, neck_depth_body_mm], center = false);
  }
}

module piezo_recess() {
  translate([0, bridge_from_nut_mm, body_thickness_mm / 2 - piezo_recess_depth_mm])
    cube([piezo_recess_wid_mm, piezo_recess_len_mm, piezo_recess_depth_mm + 1],
         center = true);
}

module electronics_pocket() {
  translate([body_width_mm / 4, body_center_y + 30,
             -body_thickness_mm / 2 - 0.5])
    cube([elec_pocket_wid_mm, elec_pocket_len_mm, elec_pocket_depth_mm + 0.5],
         center = true);
}

module electric_violin() {
  difference() {
    union() { body_envelope(); }
    piezo_recess();
    electronics_pocket();
  }
  fingerboard();
  translate([-nut_width_mm / 2, 0, 0]) neck_blank();
}

electric_violin();

// Echo key datum values so `openscad` doubles as a layout check.
echo(str("variant_strings=", string_count));
echo(str("scale_length_mm=", scale_length_mm));
echo(str("bridge_from_join_mm=", bridge_from_join_mm));
echo(str("string_spacing_mm=", string_spacing_mm));
