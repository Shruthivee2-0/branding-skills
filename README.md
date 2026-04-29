# Postman Infographics Skill

A Claude skill that generates on-brand infographics, diagrams, charts, and data visualisations using the official Postman 2026 Brand Color System.

---

## What It Does

When this skill is active, Claude will automatically generate pixel-perfect, brand-consistent infographics whenever someone asks to visualise data, create a diagram, compare options, or illustrate a process. No manual brand checking required — the rules are baked in.

**Trigger phrases:**
- "make an infographic about..."
- "visualise this data"
- "show this as a chart"
- "create a workflow diagram"
- "compare these options"
- "illustrate this process"

---

## What It Produces

| Type | Description |
|------|-------------|
| **Flow diagrams** | Step-by-step workflows with dashed arrows and topic-coloured boxes |
| **Stats / data viz** | Hero numbers, bar charts, horizontal bars with insight callouts |
| **Tiered cards** | Maturity models, level systems, progression frameworks |
| **Comparison tables** | Feature matrices with ✓ / ! / ✗ status indicators |
| **Bar charts** | Vertical bar charts with labelled axes and brand-coloured bars |
| **Status checklists** | Readiness trackers with colour-coded pass/warn/fail states |

All output uses:
- **Postman 2026 official colour system** (orange, purple, blue, yellow, magenta, green, neutrals)
- **Inter** typeface throughout
- **IBM Plex Mono** for labels, axes, and captions
- **Postman logomark watermark** top-right by default
- **White background** by default; gradient available for social media on request

---

## Repo Structure

```
infographics/
├── SKILL.md              # Full skill definition — rules, colours, patterns, templates
└── assets/
    ├── Postman_Logomark_orange.svg
    ├── Postman_Logomark_orange.png
    ├── Postman_Logo_Horizontal_Orange_Web.svg
    ├── Postman_Logo_Horizontal_Orange_Web.png
    ├── Postman_Logo_Horizontal_Orange_Black_Web.svg
    ├── Postman_Logo_Horizontal_Orange_Black_Web.png
    ├── Postman_Logo_Horizontal_Orange_White_Web.svg
    ├── Postman_Logo_Horizontal_Orange_White_Web.png
    ├── Postman_Logo_Horizontal_White_Web.svg
    ├── Postman_Logo_Horizontal_White_Web.png
    ├── Postman_Logo_Stacked_Orange_Black_Web.svg
    ├── Postman_Logo_Stacked_Orange_Web.svg
    ├── Postman_Logo_Stacked_Orange_White_Web.svg
    └── Postman_Logo_Stacked_White_Web.svg
```

---

## How to Install (Claude.ai — per user)

1. Download `infographics.skill` from this repo
2. Go to **Claude.ai → Settings → Skills**
3. Click **Install skill** and select the `.skill` file
4. The skill is now active in all your conversations

---

## How to Deploy (Claude API / Enterprise — org-wide)

For team-wide deployment, paste the contents of `infographics/SKILL.md` directly into your Claude API system prompt. Every conversation will automatically have the skill active — no per-user install needed.

See `SYSTEM_PROMPT.md` in this repo for the ready-to-use system prompt.

**Anthropic API example:**

```python
import anthropic

with open("infographics/SKILL.md", "r") as f:
    skill_content = f.read()

client = anthropic.Anthropic()
message = client.messages.create(
    model="claude-sonnet-4-20250514",
    max_tokens=4096,
    system=skill_content,
    messages=[
        {"role": "user", "content": "Create a workflow diagram showing our API onboarding process"}
    ]
)
```

---

## How to Deploy (Claude Teams / Workspace)

If your organisation uses Claude's Teams plan:

1. Go to **Workspace Settings → Instructions**
2. Paste the contents of `infographics/SKILL.md` into the shared instructions field
3. All workspace members will now generate brand-consistent infographics automatically

---

## Updating the Skill

The skill is maintained in `infographics/SKILL.md`. To update:

1. Edit `SKILL.md` with the new rules
2. Re-zip: `zip -r infographics.skill infographics/`
3. Commit and push
4. Team members reinstall the `.skill` file, or the API system prompt is updated automatically if you're reading from the file at runtime

---

## Key Design Rules (summary)

- **Colours** — Use the official 2026 palette: orange (#FF6C37), purple (#7A24F0), blue, yellow, magenta, neutrals. Never invent colours outside the system.
- **Box outlines** — Always `border: 1.5px solid #000000`. No coloured borders.
- **Topic differentiation** — Each topic gets a different colour family tint as the fill.
- **Watermark** — Postman logomark, top-right, 25px from edges, full opacity, always on unless user removes it.
- **Headings** — Title case, left-aligned by default.
- **Background** — White (#ffffff) by default. Peach-to-lavender gradient available for social media on request.
- **Arrows** — All workflow connectors use arrowheads. No dots. No plain lines.
- **Watermark SVG** — Always 4 paths, inline fill attributes only, no CSS classes inside the SVG.

---

## Colour Palette Quick Reference

| Family | Tint (fills) | Solid (accents) |
|--------|-------------|-----------------|
| Orange | `#FFF2EB` | `#FF6C37` |
| Purple | `#F3EBFF` | `#7A24F0` |
| Blue | `#E5F4FF` | `#198CF7` |
| Yellow | `#FFF9E0` | `#FFA90A` |
| Magenta | `#FEF1FD` | `#F37FFE` |
| Green (accent) | `#A4EEC4` | — |
| Teal (accent) | `#D0F9FD` | — |

---

## Maintained By

Postman Brand & Design — questions or updates, open a PR or ping the #brand-systems channel.
