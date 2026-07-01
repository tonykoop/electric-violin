# MCP Session Log

Audit trail for Claude Desktop MCP sessions that produced parametric CAD,
vector art, renders, or print plates in this repo. Required for V5 sign-off
per [`tonykoop/electric-violin#1`](https://github.com/tonykoop/electric-violin/issues/1).

One row per session. Append-only. Do not edit historical rows once an artifact
has been committed.

## Required fields

| Field | Description |
| --- | --- |
| `timestamp` | ISO-8601 UTC timestamp when the session produced the committed artifact. |
| `tool` | MCP tool name: `openscad`, `blender`, `illustrator`, `photoshop`. |
| `artifact` | Repo-relative path of the artifact written or updated. |
| `claude_session_id` | Session identifier from the Claude Desktop client. |
| `notes` | One-line note: source design-table cells, parent artifact, or follow-up. |

## Session table

| timestamp | tool | artifact | claude_session_id | notes |
| --- | --- | --- | --- | --- |
| 2026-05-29T00:00:00Z | claude-code | cad/electric-violin-placeholder.scad (retired) | cindy-r1-2026-05-29 | Parametric solid-body scaffold from design-table baseline. Retired 2026-07-01, superseded by cad/electric-violin.scad. |
| 2026-07-01T00:00:00Z | openscad | cad/electric-violin.scad | fable-v5-refresh-2026-07-01 | Parametric master. scale 328 mm from family-spec.csv; blank 2x8x16 in + neck 130 mm from electric-violin-design-table.xlsx; body outline placeholder (style-open). authority: pending_measurement. openscad render check: pass (openscad -o STL, exit 0). |
| 2026-07-01T00:00:00Z | manual | electric-violin-design-table.xlsx | fable-v5-refresh-2026-07-01 | Dimension authority workbook; reviewed against family-spec.csv this pass. No dimension changes. Provenance row added for V5 fabrication logging. |
| 2026-07-01T00:00:00Z | manual | bom.csv | fable-v5-refresh-2026-07-01 | Material/hardware/electronics list reviewed against design-table baseline. No changes. |
| 2026-07-01T00:00:00Z | manual | sourcing.csv | fable-v5-refresh-2026-07-01 | Spec-first sourcing; prices unverified. Reviewed against design table. |
| 2026-07-01T00:00:00Z | manual | cut-list.csv | fable-v5-refresh-2026-07-01 | Rough/finish stock from design-table baseline. Reviewed. |
| 2026-07-01T00:00:00Z | manual | validation.csv | fable-v5-refresh-2026-07-01 | Geometry/pickup/setup gates reviewed against design table. |

## Pending V5 deliverables

These artifacts are part of the V5 acceptance gate in issue #1 and remain
**not started** as of this scaffold. Each one requires its own MCP session
and a row in the table above:

- `cad/electric-violin.scad` — parametric OpenSCAD master (every critical
  dimension traceable to `family-spec.csv`, no magic numbers).
- `drawings/electric-violin.svg` — Illustrator master (vector design plate).
- `drawings/electric-violin.dxf` — DXF export for laser/CNC. Log in
  `visual-output-register.csv` with `artifact_kind=dxf`, `authority=fabrication`,
  `dimension_claim=derived_from_authority`.
- `images/hero-render.png` — Blender render (or OpenSCAD STL → Blender).
  Log as `authority=non_fabrication` / `role=concept`.
- `print-packet/assembly-plate.pdf` — Photoshop or Illustrator print plate.
  Callouts must reference design-table cell IDs so dimension changes propagate.

## Boundaries

- A render, SVG preview, or print-packet plate is **never** fabrication
  authority on its own.
- Hand-edited artifacts (no MCP session) belong in the log too, with
  `tool=manual` and a notes field that explains why MCP was not used.
- A row in this log is not, by itself, sign-off — `visual-output-register.csv`
  carries the authority claim and must agree.
