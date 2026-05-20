# Electric Violin

Engineering documentation and parametric design table for the electric violin -
solid-body 4- and 5-string variants with piezo bridge pickup integration.

Part of the [tonykoop/instrument-maker](https://github.com/tonykoop/instrument-maker) catalogue.

## Status

`V5 build-packet candidate` — V4 markdown layer and V5 audit-trail scaffold
are in place. **Not yet `V5 verified`:** all five MCP-produced artifacts
(parametric OpenSCAD master, vector design plates, hero render, print plate,
DXF export) remain pending. See [`cad/mcp-session-log.md`](cad/mcp-session-log.md)
for the deferred V5 deliverables.

## Readiness

L2 scaffold. This repo now includes root-mode build packet documentation for a
solid-body electric violin prototype. It is not L3 because CAD, electronics
verification, sourceability, ergonomic balance, and measured setup data remain
open.

## Packet Contents

- `design.md` - solid-body violin assumptions and 4/5-string variant notes.
- `bom.csv`, `sourcing.csv`, `cut-list.csv`, `validation.csv` - packet tables.
- `family-spec.csv` - per-member rows with `acoustic_law`, `end_condition`,
  and `dimension_provenance` columns. String family is validator-exempt for
  `validate_acoustic_law.py`; values use `unknown_requires_measurement` /
  `n_a_empirical` / `measurement_required` until prototype data lands.
- `visual-output-register.csv` - authority/role records for visual artifacts;
  `electric-violin-design-table.xlsx` registered as the dimension authority.
- `assembly-manual.md`, `risks.md`, `photo-shotlist.md` - build and review aids.
- `drawing-brief.md`, `drawings/README.md`, `cad/README.md`,
  `wolfram-starter.wl`, `wolfram/README.md` - starter technical artifacts.
- `cad/mcp-session-log.md` - audit trail for Claude Desktop MCP sessions
  (OpenSCAD / Blender / Illustrator / Photoshop). Empty until the first
  V5 session produces a committed artifact.
- `explorer.html` - review map for packet files, validation gates, and
  readiness caveats.

## V5 Gaps (Open Against Issue #1)

The following V5 deliverables are required by the acceptance gates in
[`tonykoop/electric-violin#1`](https://github.com/tonykoop/electric-violin/issues/1)
and remain **not started** in this repo:

- `cad/electric-violin.scad` (parametric OpenSCAD master).
- `drawings/electric-violin.svg` and `.dxf`.
- `images/hero-render.png` (Blender render or OpenSCAD STL → Blender).
- `print-packet/assembly-plate.pdf` (callouts referencing design-table cells).
- ≥ 1 row in `cad/mcp-session-log.md`.

Each of these requires a Claude Desktop MCP session and a matching row in
`visual-output-register.csv` before the README Status line can move to
`V5 verified`.

## String-Scale Assumptions

Baseline: 4-string violin scale at 328 mm / 12.91 in with optional 5-string
variant adding C3. Use published string tension data, then verify bridge/piezo
compatibility and neck/body stiffness before first full setup.

## Build Review Checklist

Before this packet moves beyond L2, lock the string count and pickup bridge
choice. The bridge, string spacing, tailpiece, electronics cavity, preamp, jack,
chin/shoulder interface, and body balance all interact. A visually clean body
outline is not enough if the instrument dives, buzzes, or produces a weak piezo
signal.

CAD should keep 4-string and 5-string layouts as explicit variants. The side
setup drawing should drive neck angle, bridge height, action, and tailpiece
geometry. The electronics drawing should show shielding, strain relief, and
service access before any cavity is routed.

## Validation Boundary

This packet supports design review and prototype planning only. The following
evidence is still required before calling it L3:

- Selected pickup bridge with measured dimensions.
- String manufacturer tension data for 4-string or 5-string setup.
- Neck/body stiffness check after 24 hours at pitch.
- Preamp and piezo output test with noise observations.
- Balance and playing-posture photos with chin and shoulder hardware installed.
- Sourceability check for electronics, bridge, fittings, and strings.

## Shop Notes

Do not cut the pickup or electronics cavity from generic dimensions. Wait for
real hardware or supplier drawings. During first signal test, check output both
direct and through the intended preamp so wiring and impedance problems are
caught before final assembly.

## License

[CC BY 4.0](LICENSE) - see LICENSE for details.
