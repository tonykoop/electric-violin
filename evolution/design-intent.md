# Design Intent — electric-violin rev A

- Master CAD: `cad/electric-violin.scad` (sha256: 7e086e06805f420f4e2214f80a6d062d48054e5ce428b7f203fe9107fdb80873), driven by `electric-violin-design-table.xlsx` (sha256: 6f20265c8c52decb553231de13495e6830ca4674a48fc843538ab7fa9406ef58) and `family-spec.csv`
- Function: Solid-body electric violin (4-string baseline G3-D4-A4-E5; 5-string C3 variant). Strings carry static tension from a fitted violin bridge on the 328 mm scale line to the nut across a bolt-on or integrated neck; there is no acoustic soundbox — output comes from an under-bridge piezo pickup and preamp. The body is primarily a mechanical/ergonomic support (often skeletal/sculpted).
- Environment: indoor electric instrument; solid-wood blank machined then oil-finished. Neck/body joint and bridge support carry sustained string load; pickup/preamp coupling governs output.
- Target qty: 1 (prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Scale length | 328 mm | fit bridge on scale line, verify at setup | intonation | family-spec.csv EV-4S (scale_mm) |
| String count | 4 (baseline) / 5 (variant) | piezo bridge must match count | pickup compatibility | family-spec.csv |
| Body blank | 2 x 8 x 16 in | surfaced to ~50 mm both faces | machining envelope | design-table BOM row 1 / step 4 |
| Neck nut-to-body-joint | 130 mm | neck angle/break over bridge | playability | design-table step 2 |
| Nut width | 24 mm (4-string) | string spacing dry-fit | playability | design-table BOM row 9 |
| Fingerboard | 1/4 x 1.25 x 11 in, R42 mm | radius matched to bridge | playability | design-table BOM row 3 |
| Piezo recess depth | ~3 mm (assumption) | per selected pickup | pickup seating/output | design-table step 8 (measurement_required) |
| String tensions / neck set / bridge fit | TBD | measure at first prototype | structure + tone | family-spec.csv (measurement_required) |

## Incidental (free for DFM)

- Body outline / skeletal styling (horn, waist, chin/shoulder interface, weight-reduction pockets) — style-open; the block envelope in the master is a non-authoritative placeholder. Non-mating surface finish, scroll vs pegbox styling.

## Must-nots (DFM may never violate)

- Piezo bridge must match the selected string count (4 vs 5) — do not route the under-bridge pocket before the bridge/pickup pair is confirmed (bom.csv, validation.csv VAL-002/003).
- Do not finalize neck/body joint or bridge support geometry before it is validated under final string tension (risks.md).
- Do not treat the sculpted body outline in the master as fabrication authority — it is style-open until an original/measured outline is drawn.
- Do not present generated renders/previews or the Wolfram starter as fabrication or executed-analysis authority (visual-output-register.csv).

## Material intent

- Preferred: maple / walnut / laminated hardwood body blank; hard maple neck; ebony/rosewood fingerboard per bom.csv. Under-bridge piezo + high-impedance preamp.
- Acceptable subs: per sourcing.csv (spec-first; prices unverified).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable.
