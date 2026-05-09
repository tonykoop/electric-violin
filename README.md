# Electric Violin

Engineering documentation and parametric design table for the electric violin -
solid-body 4- and 5-string variants with piezo bridge pickup integration.

Part of the [tonykoop/instrument-maker](https://github.com/tonykoop/instrument-maker) catalogue.

## Readiness

L2 scaffold. This repo now includes root-mode build packet documentation for a
solid-body electric violin prototype. It is not L3 because CAD, electronics
verification, sourceability, ergonomic balance, and measured setup data remain
open.

## Packet Contents

- `design.md` - solid-body violin assumptions and 4/5-string variant notes.
- `bom.csv`, `sourcing.csv`, `cut-list.csv`, `validation.csv` - packet tables.
- `assembly-manual.md`, `risks.md`, `photo-shotlist.md` - build and review aids.
- `drawing-brief.md`, `drawings/README.md`, `cad/README.md`,
  `wolfram-starter.wl`, `wolfram/README.md` - starter technical artifacts.

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
