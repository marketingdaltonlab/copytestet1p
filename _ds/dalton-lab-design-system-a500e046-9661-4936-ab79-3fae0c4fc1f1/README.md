# DALTON LAB — Design System

A brand & interface design system for **Dalton Lab**, built from the supplied logo
suite and a dark/light visual specification. It contains the brand's color and type
tokens, logo assets, signature background treatments, preview cards for the Design
System tab, and a UI kit + slide kit that put the brand into practice.

> **Sources provided:** 25 logo files in `uploads/` (PNG + SVG, stacked / horizontal /
> tile / wordmark / D-mark, in dark & light variants) plus a written color & type
> specification (reproduced in *Visual Foundations* below). **No codebase or Figma file
> was provided** — the product UI in `ui_kits/` and `slides/` is an *original
> application of the brand language*, not a recreation of an existing product. Treat
> those surfaces as brand-faithful starting points, not source-of-truth screens.

---

## What is Dalton Lab?

Dalton Lab presents as a **modern technical / R&D studio** brand. The identity is built
around a single strong glyph: a geometric **"D"** with a wedge sliced out of its inner
counter — reading at once as an **aperture, a dial, and a clock hand**. It sits inside a
rounded-square "app tile" finished with a **cyan→teal gradient hairline border** over a
near-black navy field. The supporting wordmark, **DALTON LAB**, is set in a bold,
wide-tracked geometric uppercase sans.

The written spec is oriented toward **presentations and marketing surfaces** (it
references eyebrows, taglines, a slide counter, footers, light "slides claros" with a
cyan top bar), so this system leans into a **deck + landing-page** vocabulary.

The tone is **precise, confident, lightly futuristic** — dark navy canvas, cyan as the
single energizing accent, purple as a rare secondary spark, and a Fraunces-italic
flourish reserved for emphasis.

---

## CONTENT FUNDAMENTALS

How Dalton Lab writes. (Derived from the brand spec's structure — eyebrows, taglines,
highlights — and the studio positioning. Adjust as real product copy emerges.)

- **Voice:** Confident, exact, unfussy. Reads like an engineering team that cares about
  craft. Avoids hype words ("revolutionary", "game-changing") and exclamation marks.
- **Person:** Speaks to the reader as **"you"**; refers to itself as **"we" / "Dalton
  Lab"**. Avoids "I".
- **Casing:**
  - **Eyebrows & labels** → `UPPERCASE`, wide tracking, monospaced. e.g. `WHAT WE BUILD`,
    `01 / OVERVIEW`.
  - **Headlines** → sentence case, short, declarative. e.g. *"We build the tools the lab
    actually needs."*
  - **Buttons** → Title Case or sentence case, never SHOUTING. e.g. `Start a build`,
    `See the work`.
- **The italic highlight:** One or two words per headline may be set in **Fraunces
  italic cyan** to carry the emotional weight — this is the signature move. e.g.
  *"Engineered for **precision**."* Use sparingly; over-using it kills the effect.
- **Numbers are typographic:** Stats, counters, versions, timestamps render in
  **JetBrains Mono** so they feel measured and technical (`v2.4`, `99.98%`, `03 — 12`).
- **Length:** Headlines under ~8 words. Body in tight 2–3 sentence blocks. Generous
  whitespace over dense paragraphs.
- **Emoji:** **Not used.** The technical/mono accents and the D-glyph carry personality
  instead.
- **Vibe checklist:** measured · technical · spacious · quietly premium · zero clutter.

---

## VISUAL FOUNDATIONS

### Color
- **Dark theme is the home base.** Background is a soft vertical gradient
  `#0a1628 → #0d1d36` (near-black navy). Most brand surfaces live here.
- **Light theme** uses `#fff` / `#f6f9fc` fields, `#0a0a0a` text in four levels, and a
  `#e4ebf2` border. The **cyan accent is identical in both themes**.
- **Cyan `#33ADE5` is the only primary accent** — links, key highlights, focus rings,
  the logo tile border, the thin top bar on light slides.
- **Purple `#A855F7` is a rare support accent** — a second glow color, occasional data
  or gradient partner. Never competes with cyan for primary actions.
- **Text in four levels** (dark): `--text #e8eef5` → `--text-2 #b8c8db` →
  `--text-3 #8aa5c2` → `--text-4 #5f7a98`. Light mirrors this with `#0a0a0a`-based ramps.

### Type
- **Bricolage Grotesque** (`--display`, weights 200–800) does almost everything —
  display, headings *and* body. Tight negative tracking on large sizes.
- **Fraunces italic** (`--serif`) is the **signature** — emphasis words, taglines,
  `em.highlight` only. Never set whole paragraphs in it.
- **JetBrains Mono** (`--mono`) for eyebrows, labels, technical numbers, footer text,
  and the slide counter.

### Spacing & layout
- **4px base scale** (`--s-1`…`--s-10`). Generous section padding (`48–128px`).
- Layouts are **calm and gridded** with lots of negative space; content sits on a
  centered max-width column. Fixed elements: a top bar / nav, and a slide counter
  pinned bottom-right on decks.

### Backgrounds & texture
- **Dot grid** (`radial-gradient` dots) faded by a **radial mask** — subtle technical
  texture behind dark heroes.
- **Radial glow** in cyan (top-left) and purple (bottom-right), low opacity.
- **Light slides** get a **3px cyan bar** across the very top as their signature edge.
- No photography is supplied; full-bleed imagery slots are left as placeholders.

### Borders, radii, elevation
- **1px hairline borders** in `--cyan-faint` (rgba cyan ~0.18) on dark; `#e4ebf2` on light.
- **Corner radii:** 8 / 12 / 16px for UI; **22px** for the app-icon logo tile; pill
  (`999px`) for tags & some buttons.
- **Cards:** dark translucent surface, 1px cyan-faint border, soft large shadow, optional
  cyan glow on hover. Light cards: white, `#e4ebf2` border, soft neutral shadow.
- **Elevation = shadow + glow**, not heavy strokes. Glow (`--glow-cyan`) signals
  interactivity / focus.

### Motion
- **Restrained and smooth.** 150–250ms ease-out fades & small translateY rises on
  reveal. No bounce, no spring overshoot.
- **Hover:** brighten cyan / lift border opacity / add cyan glow; slight `translateY(-2px)`
  on cards.
- **Press:** small `scale(0.98)` and a step toward `--cyan-deep`.
- **Focus:** cyan ring (the `--glow-cyan` token).

### Imagery vibe
- Cool, dark, technical. If photography is added, expect **cool-toned, high-contrast,
  slightly desaturated** images that sit comfortably on the navy field. No warm/sepia.

---

## ICONOGRAPHY

- **No proprietary icon set was supplied.** For UI glyphs this system uses
  **[Lucide](https://lucide.dev)** (loaded from CDN) — its **1.75–2px stroke, rounded
  geometric** style matches the wordmark's clean geometry and the cyan hairline aesthetic.
  *(Substitution — flagged. Swap for the real icon set if Dalton Lab has one.)*
- **Logo / brand glyph:** the **D-mark** (`assets/mark-d.svg`, `mark-d-solid.svg`) and the
  **app tile** (`assets/mark-tile-*.svg`) are the hero marks. The wedge-cut D may be used
  on its own as a favicon, avatar, or loading mark.
- **Stroke weight:** keep icon strokes ~1.75–2px to sit beside `--cyan` hairlines.
- **Color:** icons inherit `--text-3` at rest, `--cyan` when active/hovered.
- **Emoji:** never. **Unicode glyphs** (→, ·, —) are used as quiet typographic separators
  in mono labels, not as icons.

---

## INDEX — what's in this system

| Path | What it is |
|---|---|
| `README.md` | This file — context, content & visual foundations, iconography, manifest |
| `colors_and_type.css` | All design tokens: colors (dark+light), type roles, radii, shadows, spacing, background treatments |
| `SKILL.md` | Agent Skill entry point (Claude Code compatible) |
| `assets/` | Logo suite — stacked / horizontal / tile / wordmark / D-mark, dark & light, SVG + PNG |
| `preview/` | Design System tab cards (colors, type, logos, components, effects) |
| `ui_kits/marketing/` | Marketing-site UI kit — nav, hero, feature cards, stat strip, CTA, footer, buttons, fields (React/JSX + `index.html`) |
| `slides/` | Brand slide kit — title, section, content, big-quote, comparison (React/JSX + `index.html`) |

### Components (`ui_kits/marketing/`)

- `Nav` — sticky top navigation with theme toggle and mobile menu
- `Hero` — landing hero with dot-grid + glow background
- `StatStrip` — 4-up metric band
- `Features` — 3-up feature card section
- `CTA` — closing call-to-action band with email capture
- `Footer` — site footer with link columns
- `Button` — primary / secondary / ghost button
- `Tag` — mono pill badge (cyan / purple / neutral)
- `Eyebrow` — small-caps mono section label
- `Highlight` — serif-italic cyan emphasis
- `Icon` — lucide icon wrapper

### Logo asset map (`assets/`)
- `logo-stacked-{dark,light}` — tile + wordmark, stacked (dark = for light bg, light = for dark bg)
- `logo-horizontal-{dark,light}` — D-mark + wordmark in a row
- `mark-tile-{dark,light}` — the rounded-square app tile only
- `mark-d.svg` / `mark-d-solid.svg` — the bare wedge-cut D glyph
- `wordmark-{dark,light}` — "DALTON LAB" type only

> **Naming note:** in the source files *"branco/light"* = the variant intended for **dark
> backgrounds** (light-colored wordmark) and *"escuro/dark"* = the variant for **light
> backgrounds**.

---

## Font substitution flag

Bricolage Grotesque, Fraunces, and JetBrains Mono are all loaded from **Google Fonts**
(see `colors_and_type.css`). These are the exact families named in the brand spec, so no
visual substitution was needed — but they are linked from the Google Fonts CDN rather
than bundled as local `.ttf` files. If you need offline/self-hosted fonts, drop the
`.woff2` files into `fonts/` and swap the `@import` for `@font-face` rules.
