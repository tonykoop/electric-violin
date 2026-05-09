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
