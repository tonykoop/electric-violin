# Electric Violin Build Packet Print Packet

Generated: 2026-05-09
Packet folder: `/tmp/electric-violin-codex-gina-r2-build-packet`

## File Map

| File | Purpose |
| --- | --- |
| `design.md` | Project intent, catalog metadata, assumptions, and validation plan. |
| `bom.csv` | Starter bill of materials with part categories, quantities, drawing refs, and notes. |
| `sourcing.csv` | Supplier/search tracker with specs, price/date fields, lead time, substitutes, and risks. |
| `cut-list.csv` | Rough/final stock sizes, material, grain/orientation, operations, yield, and offcuts. |
| `drawing-brief.md` | Manufacturing drawing and technical product sketch brief. |
| `assembly-manual.md` | Shop-facing sequence, tools, fixtures, safety, tuning, finishing, and maintenance notes. |
| `validation.csv` | Target/measured values, tolerance, environment, result, and tuning/build action log. |
| `supplier-rfq.md` | Supplier email/request-for-quote starter. |
| `visual-bom-brief.md` | Art direction for an image-forward visual BOM. |
| `electric-violin-starter.wl` | Wolfram starter for physics, optimization, visualization, and validation. |
| `README.md` | Project artifact. |
| `photo-shotlist.md` | Project artifact. |
| `risks.md` | Project artifact. |

<div class="page-break"></div>

## design.md

Project intent, catalog metadata, assumptions, and validation plan.

# Electric Violin Design

## Intent

Create an L2 packet for a solid-body electric violin that can become a CAD and
shop prototype while keeping the unresolved pickup, ergonomics, and load
questions visible.

## Readiness

L2 scaffold. This is ready for CAD layout and component sourcing review, not
for production or final electrical performance claims.

## Governing Model

Pitch is controlled by Mersenne-Taylor string behavior. The body is primarily a
mechanical support and ergonomic structure; output depends on bridge/piezo
coupling, preamp impedance, wiring noise, and player setup.

```text
f = (1 / (2 L)) * sqrt(T / mu)
```

## Baseline Assumptions

| Parameter | Baseline | Notes |
| --- | ---: | --- |
| Scale length | 328 mm / 12.91 in | Violin standard |
| Primary tuning | G3-D4-A4-E5 | Optional C3-G3-D4-A4-E5 variant |
| Body | Solid hardwood or laminated body | Chambering optional after stiffness check |
| Neck | Integrated or bolted maple neck | Joint must resist string pull |
| Pickup | Piezo bridge | Preamp/impedance matching required |
| Target total tension | 45-65 lbf | 5-string set likely higher |

## Tension And Electronics Notes

- Use published string tension data before sizing the neck/body joint.
- Shield and strain-relieve wiring before closing any cavity.
- Verify piezo output through the intended preamp, not only direct to an amp.
- Balance the instrument with shoulder rest/chin rest installed.

## Known Gaps

- No body outline or ergonomic mockup evidence.
- No pickup/preamp selection or wiring test.
- No CAD neck-joint/load review.
- No sourceability/pricing check.
- No setup measurements.

<div class="page-break"></div>

## bom.csv

Starter bill of materials with part categories, quantities, drawing refs, and notes.

| item | qty | unit | material_or_spec | estimated_cost_usd | notes |
| --- | --- | --- | --- | --- | --- |
| Body blank | 1 | ea | maple, alder, walnut, or laminated hardwood body blank | 70 | Stability and weight matter |
| Neck blank | 1 | ea | maple or laminated neck stock | 55 | Integrated or bolt-on TBD |
| Fingerboard | 1 | ea | ebony, composite, or hard maple | 35 | Scoop/setup TBD |
| Piezo bridge | 1 | ea | 4-string violin piezo bridge or 5-string variant if selected | 80 | Compatibility with string count is critical |
| Preamp/output jack | 1 | set | high-impedance piezo preamp and 1/4 in output | 45 | May be external for first prototype |
| Tuners/pegs | 4 | ea | violin pegs, geared pegs, or machine tuners | 40 | 5-string variant needs five |
| Tailpiece/fine tuners | 1 | set | violin tailpiece compatible with pickup bridge | 35 | String spacing must match |
| String set | 1 | set | 4-string or 5-string electric/acoustic violin set | 55 | Use published tension data |
| Chin/shoulder interface | 1 | set | chin rest and shoulder rest mounting plan | 35 | Balance validation item |
| Finish/electrical supplies | 1 | lot | finish, shielding, wire, solder, heat shrink | 35 | Noise control TBD |

<div class="page-break"></div>

## sourcing.csv

Supplier/search tracker with specs, price/date fields, lead time, substitutes, and risks.

| item | required_spec | search_terms | supplier_candidates | date_checked | unit_price_usd | lead_time | substitution_risk | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Piezo bridge | bridge compatible with 4/4 violin scale and selected string count | electric violin piezo bridge 4 string 5 string | music electronics suppliers; luthier suppliers | TBD | TBD | TBD | High | Pickup choice drives bridge geometry |
| Preamp | high impedance piezo input, low noise output | piezo violin preamp high impedance | music electronics suppliers | TBD | TBD | TBD | High | Direct piezo output may sound thin/noisy |
| Strings | 4 or 5 string set with published tensions | electric violin strings tension chart | string manufacturers; music suppliers | TBD | TBD | TBD | Low | Use actual tension values |
| Body/neck wood | stable clear hardwood blank | electric violin body blank maple neck blank | hardwood dealer; luthier supplier | TBD | TBD | TBD | Medium | Weight and balance matter |
| Tuners/fittings | hardware matching headstock or pegbox design | violin geared pegs tailpiece fine tuners | luthier suppliers | TBD | TBD | TBD | Medium | Geometry depends on CAD |

<div class="page-break"></div>

## cut-list.csv

Rough/final stock sizes, material, grain/orientation, operations, yield, and offcuts.

| part | qty | rough_dimensions_in | final_dimensions_in | material | grain_or_orientation | operation | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Body | 1 | 1.75 x 7.0 x 18.0 | outline TBD | hardwood/lamination | stable, attractive face optional | CNC/profile route, cavity route | Weight/balance TBD |
| Neck | 1 | 1.5 x 2.5 x 14.0 | profile TBD | maple/lamination | quarter grain preferred | saw, route, carve | Joint design TBD |
| Fingerboard | 1 | 0.35 x 1.75 x 11.0 | scoop/profile TBD | ebony/composite/maple | long grain | plane and fit | Setup after stringing |
| Electronics cavity cover | 1 | 0.125 x 3.0 x 5.0 | fit to cavity | plastic/wood | stable | cut and drill | Shielding plan TBD |
| Bridge/pickup fit area | 1 | TBD | TBD | body/bridge interface | aligned to string path | route/drill after bridge selection | Do not cut before hardware arrives |
| Headstock/pegbox area | 1 | included in neck | layout TBD | neck stock | grain lengthwise | drill/ream or route tuner holes | 4/5-string variant changes layout |

<div class="page-break"></div>

## drawing-brief.md

Manufacturing drawing and technical product sketch brief.

# Electric Violin Drawing Brief

Required first drawings:

- Body plan with bridge line, string paths, pickup, controls, jack, and cavity.
- Side setup drawing with nut, fingerboard, bridge, action, and tailpiece.
- Neck/body joint detail.
- Headstock or pegbox drilling layout for 4-string and optional 5-string.
- Wiring schematic with shielding and strain relief.

<div class="page-break"></div>

## assembly-manual.md

Shop-facing sequence, tools, fixtures, safety, tuning, finishing, and maintenance notes.

# Electric Violin Assembly Manual

1. Choose 4-string or 5-string baseline before final CAD.
2. Select pickup bridge and preamp so the CAD reflects real hardware.
3. Produce body, neck, fingerboard, bridge, electronics, and ergonomic drawings.
4. Cut body and neck oversize, then dry-fit the neck/body joint.
5. Route electronics cavity and wire path only after component dimensions are
   confirmed.
6. Fit fingerboard, nut, bridge, tailpiece, and tuners.
7. Wire pickup, jack, shielding, and preamp with strain relief.
8. String gradually, test signal, and record setup/balance data.

Safety: protect eyes during first pitch-up and ventilate during soldering or
finish work.

<div class="page-break"></div>

## validation.csv

Target/measured values, tolerance, environment, result, and tuning/build action log.

| check_id | area | target | method | tolerance | measured | result | action |
| --- | --- | --- | --- | --- | --- | --- | --- |
| VAL-001 | Scale length | 328 mm / 12.91 in vibrating length | measure nut to bridge | +/- 1 mm | TBD | TBD | Reset bridge/nut position |
| VAL-002 | String tension | within selected set published range | manufacturer chart | within published range | TBD | TBD | Change string set |
| VAL-003 | Neck/body stiffness | no permanent movement after 24 hours at pitch | measure relief/projection before and after | movement TBD | TBD | TBD | Revise neck or joint |
| VAL-004 | Pickup output | clean signal through intended preamp | record direct test and listen for noise | no crackle/dropout | TBD | TBD | Revise wiring/shielding/preamp |
| VAL-005 | Balance | comfortable standing/seated hold | mockup and playing posture photos | no neck dive | TBD | TBD | Move mass/strap/shoulder interface |
| VAL-006 | Action | playable bowed action across strings | measure at fingerboard end | target TBD | TBD | TBD | Adjust bridge/fingerboard |

<div class="page-break"></div>

## supplier-rfq.md

Supplier email/request-for-quote starter.

# Supplier RFQ Draft

Hello,

Please quote parts for a solid-body electric violin prototype: piezo bridge,
high-impedance preamp or recommended electronics, output jack, violin string
set with published tensions, tuners/fittings, and any wiring/shielding supplies.

Please include dimensions, compatibility notes, unit price, lead time, and
recommended substitutions for 4-string and 5-string variants.

<div class="page-break"></div>

## visual-bom-brief.md

Art direction for an image-forward visual BOM.

# Visual BOM Brief

Show the solid body and neck with exploded callouts for pickup bridge, preamp,
jack, wiring, shielding, tailpiece, tuners, fingerboard, strings, chin/shoulder
interface, finish, and cavity cover.

<div class="page-break"></div>

## electric-violin-starter.wl

Wolfram starter for physics, optimization, visualization, and validation.

```wolfram
(* Electric violin open-string starter. Values are first-pass assumptions. *)
ClearAll["Global`*"];
a4 = 440;
freqFromMidi[m_] := a4*2^((m - 69)/12);
scaleLengthIn = 12.91;
tuning4 = <|"G3" -> 55, "D4" -> 62, "A4" -> 69, "E5" -> 76|>;
tuning5 = <|"C3" -> 48, "G3" -> 55, "D4" -> 62, "A4" -> 69, "E5" -> 76|>;

makeRows[tuning_] := KeyValueMap[
  <|"string" -> #1, "frequencyHz" -> N[freqFromMidi[#2]],
    "scaleLengthIn" -> scaleLengthIn|> &,
  tuning
];

<|"fourString" -> Dataset[makeRows[tuning4]], "fiveString" -> Dataset[makeRows[tuning5]]|>
```

<div class="page-break"></div>

## README.md

Project artifact.

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
  `electric-violin-starter.wl`, `wolfram/README.md` - starter technical artifacts.

## String-Scale Assumptions

Baseline: 4-string violin scale at 328 mm / 12.91 in with optional 5-string
variant adding C3. Use published string tension data, then verify bridge/piezo
compatibility and neck/body stiffness before first full setup.

## License

[CC BY 4.0](LICENSE) - see LICENSE for details.

<div class="page-break"></div>

## photo-shotlist.md

Project artifact.

# Photo Shotlist

- Body and neck blank orientation.
- Full-size body/hardware layout before cutting.
- Pickup bridge and electronics dimensions on arrival.
- Neck/body dry fit and string path check.
- Wiring/shielding before cavity close.
- First signal test, action readings, and balance/posture photos.

<div class="page-break"></div>

## risks.md

Project artifact.

# Electric Violin Risks

- Pickup/preamp mismatch can produce weak, noisy, or brittle output.
- Neck/body joint and bridge support are not validated under final tension.
- Poor balance can make the instrument uncomfortable even if it works
  electrically.
- Hardware dimensions may force CAD changes after sourcing.
- Remain at L2 until CAD, electronics, setup, and balance evidence are logged.
