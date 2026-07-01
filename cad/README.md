# CAD Starter Notes

Expose parameters for string count, scale length, body outline, neck angle,
bridge model, pickup cavity, jack position, control layout, and shoulder/chin
interface. Keep the 5-string option as a variant rather than a hidden edit.

## Master

`electric-violin.scad` is the parametric OpenSCAD master (units: mm). Scale
length 328 mm is authoritative from `family-spec.csv`; the body blank size is
from the design table; the body outline is a non-authoritative placeholder
(skeletal/sculpted, style-open). Authority: `pending_measurement` — see
`visual-output-register.csv` VIS-009 and `cad/mcp-session-log.md`. String
tensions, neck set/break angle, bridge fit, and pickup recess depth remain
measurement_required.
