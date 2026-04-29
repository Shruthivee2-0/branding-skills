# Changelog

## v1.1.0 — 2026-04-29

### Rules added
- **Internal alignment:** All elements within a card share the same x-axis derived from `card_x + padding`
- **No placeholders:** Never add placeholder content unless explicitly requested
- **Text containment:** Hard character budgets per font size; all text manually wrapped; native SVG text only
- **Row width consistency:** All horizontal rows in a layout share the same total width
- **Divider padding:** Minimum 15px above and below every divider line
- **Em dash ban:** Never use em dashes anywhere; rewrite sentences to avoid them
- **Eyebrow font size locked at 15px:** All IBM Plex Mono eyebrows (STAGE 01, METRIC, etc.) minimum 15px/700
- **Owner/chip style:** Always `background:#000; color:#fff` — black chip, white text
- **Divider colour:** Always a darker shade of the box fill family, never a fixed grey
- **foreignObject ban:** Never use foreignObject for card text; always native SVG text elements
- **Five Forces canonical layout:** Hub-and-spoke with equal-size cards, native SVG text, no overflow
- **Icon placement:** Icon sits between eyebrow and heading; minimum 15px gap on both sides

### Design system additions
- Stage 01 always uses orange `#FF6C37` border (others black)
- Foundation cards always black with white headings
- Frame pattern: grey `#E6E6E6` border wraps journey stages; foundation sits outside below
- Feedback loop: straight horizontal line at top with right-angle vertical drops

## v1.0.0 — 2026-04-29

### Initial release
- Full Postman 2026 Brand Color System
- Six infographic types: flow, stats, tiered, comparison, bar chart, checklist
- Postman logomark watermark (4-path SVG, locked verbatim block)
- Inter + IBM Plex Mono typefaces
- White background default
- Arrow-only connectors
- Status indicators: Flora Green ✓, Elemental Yellow !, Rusty Red ✗
