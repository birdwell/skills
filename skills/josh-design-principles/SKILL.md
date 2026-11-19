---
name: "josh-design-principles"
description: "Apply Josh's preferred design laws and principles when designing, building, or reviewing any UI, screen, page, or visual layout."
---

# Design Principles

Use these when designing or reviewing UI. Core theme: simplicity. Remove before adding.

## Priority
1. **These rules override every other design skill.** That includes frontend-design, taste-skill, impeccable, shadcn, stitch, and any DESIGN.md sample. Where they conflict, follow this file.
2. **Rule order when two rules clash:** accessibility > usability > design system > simplicity > style.
3. **Never invent visual values, states, or behaviors outside the design system.**

## Before writing any code
1. **Look for a design system.** Check the repo for DESIGN.md, tokens, a component library, Storybook, or a /ds page. Read it first. Use existing components before making new ones.
2. **If none exists, start from a real one.** Pick a base DESIGN.md from awesome-design-md (github.com/VoltAgent/awesome-design-md) or Refero Styles. Adapt it to these rules. Save as DESIGN.md. Never start from a blank page or default shadcn.
3. **Get real references from Mobbin.** Use the Mobbin MCP (`mcp__Mobbin__search_screens`, `search_flows`, `search_sections`) to pull real app screens for the pattern being built. Load the tools with ToolSearch if deferred. Use them as reference, never copy.
4. **Name the surface mode.**
   - Operate (app UI): familiar, scannable, restrained. The default.
   - Read (docs): comprehension first.
   - Persuade (marketing): bolder scale and real imagery. Same rules still apply.
5. **Refine or redesign, never both.** Refine keeps the current look. Redesign replaces it. Never polish a look you're about to throw away. In a redesign, never silently change URLs, nav labels, or analytics IDs.
6. **Write a design read.** One or two sentences: subject, audience, primary job, direction. Ask at most one question.
7. **Set the density.** 1 (sparse) to 10 (dense). Marketing low, data tools higher.
8. **Map the user's journey.** Decide what the user needs at each step. Show only that.
9. **Write a token plan before building.** Named color roles, type roles, and a layout as prose plus an ASCII wireframe. Review it against the brief. Revise anything generic.

## Design system (always)
- **Always follow the design system.** Every screen uses the same tokens.
- **Use tokens only.** No raw hex, px, or one-off values in components.
- **If a value is missing, add a token.** Don't improvise inline.
- **Continuity.** Every screen must feel like the same app. Same type, spacing, color roles, radius, and components everywhere.
- **Turn every "don't" in DESIGN.md into a check.**
- **Write back.** After building, add any new reused values, components, or patterns to DESIGN.md. Feature-only changes stay local. Rejected ideas never become rules.

### DESIGN.md structure
YAML front matter with tokens: colors, typography, rounded, spacing (unit: 4px), components. Then sections:
1. Overview and key characteristics
2. Colors: brand, surface, text, semantic. Name + hex + role.
3. Typography: family, named style table, principles
4. Layout: spacing scale, grid, container, whitespace
5. Elevation: surface ladder and shadow levels
6. Shapes: radius ladder
7. Components: purpose, states, when to use, when not to
8. Do's and don'ts
9. Responsive behavior
10. Known gaps

## Component rules
- **Document every shared component.** Purpose, states, when to use, when not to.
- **Reuse, never reinvent.** One loading state, one empty state, one error state, used everywhere.
- **Flag duplicates.** Two components doing the same job get merged.
- **New component only when none fits.** Add it to the docs when you make it.
- **Every interactive component has all states:** default, hover, focus, active, disabled, loading, error. Plus empty where it holds data.
- **All control heights change together.** Buttons, inputs, selects, tabs share one height token.
- **Keep a /ds page** that shows every token and every state of each shared component, with a light/dark toggle.

## Color
- **Color carries meaning.** Name colors by role: primary, success, warning, danger, muted. Never by look.
- **One meaning per color, across every screen.**
- **One ground, one ink, one accent.** Ground covers most of the screen. The accent stays under 5% of any screen.
- **Accent only for actions, selection, focus, and links.** Never on body text or large fills. No second accent.
- **One neutral family.** Never mix warm and cool grays.
- **No pure black.** Use a near-black ink token.
- **Accent saturation under 80%.**
- **Never color alone.** Pair with shape, icon, or position.
- **No gray text on colored backgrounds.**
- **No decorative color.** No gradients, gradient text, glow, neon, or color washes.
- **Banned palettes:** purple/violet/indigo AI gradients, cyan on dark, cream with terracotta, near-black with neon.

## Borders: zero accent borders
- **Zero colored left borders. Ever.** No colored stripe on any edge of any card, panel, alert, input, or quote.
- **Zero accent borders anywhere.** No colored outlines for emphasis. Error states use icon and text, not a red border.
- **Separate surfaces with tone, not lines.** Step background lightness 2–6 points between surfaces.
- **Use fewer borders** (Refactoring UI): spacing first, then tone.
- **No boxes inside boxes.** Group with spacing and headings.
- **Focus rings are required.** They are accessibility, not decoration. Use a visible 2px outline with 2px offset in the ink or focus token.

## Shadows: elevation only
- **Shadow only for things that float:** menus, popovers, modals, sheets, toasts.
- **No shadow on cards, buttons, or inputs** at rest on the page.
- **Never border plus wide shadow on the same element.**
- **No glows, halos, or colored shadows.**

## Simplicity (highest priority)
- **Less but better** (Dieter Rams): Keep only what's essential.
- **KISS**: Keep it simple.
- **Occam's razor**: Pick the simplest option that works.
- **Tesler's Law**: Complexity can't be removed, only moved. Move it off the user.
- **Progressive disclosure**: Show advanced options only when needed. Don't show every action at once.
- **Form follows function**: Purpose drives the shape.
- **Don't make me think** (Krug): Obvious beats clever.
- **Every element must earn its place.** Ask what the user does with it. If nothing, remove it.
- **One primary action per screen.** Secondary actions look weaker.
- **Spend boldness in one place.** Remove one accessory before finishing.
- **Never replace removed ornament with new ornament.** Fill with scale, real content, or space.
- **Modals are a last resort.**

## Words and UI text
- **Omit needless words** (Krug): Cut half the words, then half again.
- **No happy talk**: Remove intro fluff that says nothing.
- **No instructions**: If the UI needs explainer text, fix the design. Short helper text that prevents errors is fine.
- **Labels last** (Refactoring UI): Show the data. Drop the label when the format makes it obvious.
- **Signal-to-noise**: Keep useful content high, noise low.
- **Sentence case everywhere.** Including headings and buttons. Never Title Case.
- **Active voice, second person.**
- **Buttons name the result.** "Save changes," not "Submit." Use the same verb through the whole flow.
- **Errors say how to fix it.** Never apologize.
- **Empty states invite the next action.**
- **Digits, not words.** Write 3, not "three."
- **Specific, human copy.** Write what a real person would say out loud.
- **Short titles.** Start with a verb when possible. Headlines fit in 2 lines.
- **No fake data.** No "John Doe," "Acme," or round fake stats.
- **Real typography characters.** Use … and curly quotes. Loading text ends with "…".
- **No em-dash overuse.** No "Not X. A Y." cadence.
- **Banned words.** Never use: delve, robust, seamless, seamlessly, unlock, unleash, elevate, empower, leverage, supercharge, streamline, effortless, cutting-edge, game-changing, revolutionize, next-level, next-gen, harness, journey, landscape, realm, tapestry, synergy, theater, all-in-one, powerful, intuitive.

## Cognition
- **Hick's Law**: More choices = slower decisions. Cut options.
- **Fitts's Law**: Big, close targets are faster to hit.
- **Cognitive load**: Every element costs mental effort. Spend it wisely.

## Typography
- **One font family.** Same font for headers, body, labels, and buttons. Ignore font-pairing advice from other skills.
- **Monospace only for code.** Never as a "technical" look.
- **Choose the font on purpose.** Don't default to Inter, Roboto, or a system font without a reason.
- **Strict text styles.** 3 to 5 named styles (e.g. title, heading, body, caption). Every piece of text uses one. No one-off sizes or weights.
- **Type scale**: Fixed ratio, 1.2–1.25. Each step clearly different.
- **Weights**: 3 at most. Body 400, labels 500, headings 600.
- **Body text 16px.** Never under 12px.
- **Line height**: 1.5–1.7 for body. Tighter for large headings.
- **Line length**: 45–75 characters.
- **Tracking**: Never widen. Large headings may tighten slightly, never past -0.04em.
- **Numbers**: tabular figures in tables and money.
- **Headings**: use `text-wrap: balance`.
- **Weight for hierarchy**: Rank text with size and weight, not boxes.
- **De-emphasize to emphasize** (Refactoring UI): Mute secondary content instead of making the main thing louder.
- **Contrast**: Body text 4.5:1. Large text and icons 3:1. Check dark mode separately.
- **No uppercase.** Not in labels, badges, table headers, nav, or eyebrows.
- **No AI-style typography.** No eyebrow labels above headings. No gradient text. No colored or italic accent word in headlines. No italic serif display.

## Whitespace and layout
- **Spacing is always a multiple of 4.** (4, 8, 12, 16, 24, 32, 48, 64...) No fluid clamp values off the grid.
- **Whitespace is a design element**, not waste.
- **Start generous**: Use more space than you think, then remove.
- **Tight inside, generous between.** Space inside a group is smaller than space between groups.
- **More space above a heading than below it.**
- **Space groups**: Spacing alone groups items. No dividers needed.
- **Body text at least 16px from the screen edge.**
- **Law of Proximity**: Things close together look related.
- **Alignment**: Everything lines up to a grid.
- **Repetition**: Reuse styles to build unity.
- **Consistency**: The same thing looks and works the same everywhere.
- **Hierarchy** (Apple HIG): Controls sit above and apart from content.
- **Intentional variation.** The primary thing is bigger, heavier, or closer. Secondary things recede.
- **Radius ladder.** A fixed set, e.g. controls 8, cards 12. Never mix pill and square at the same size.
- **Phone layout is its own design.** Not a squeezed desktop.
- **Responsive**: Test at 375, 768, 1024, 1440. No horizontal scroll. Never disable zoom. Use `min-h-dvh`, not `100vh`.

## Touch and mobile
- **Targets**: 44pt on iOS, 48dp on Android. 8px between targets.
- **Every gesture has a visible alternative.**
- **Respect safe areas.**

## Show meaning without borders or text
- **Color as intent**: Role-based color shows state or action.
- **Shape and icons**: Carry meaning at a glance. Buttons, cards, and inputs should not share the same shape.
- **Position**: Placement shows importance. Keep primary actions in a fixed spot.
- **Tone**: Background lightness steps show surfaces and grouping.
- **One icon set, one stroke weight.** Never emoji as icons.

## Perception
- **Von Restorff effect**: The one item that stands out gets remembered. Use for the primary action.
- **Aesthetic-usability effect**: Pretty designs feel easier to use. Polish matters.

## Behavior and states
- **System status**: Always show users what's happening.
- **Feedback for every action**: pressed, loading, success, error. No silent failures.
- **Design every state.** Empty, loading, error, invalid, long text, missing image.
- **Loading**: Skeletons that match the layout. Buttons show a spinner and disable once the request starts.
- **Destructive actions** need a confirm or an undo.
- **Postel's Law**: Accept messy input. Output clean results.
- **Forms**: Labels above inputs, errors below. Never block paste. Set autocomplete and input type. Focus the first error on submit. Warn before losing unsaved changes.
- **The URL is the state.** Deep-link filters, tabs, and pages.

## Motion
- **Motion only for change.** State changes and attention, never decoration.
- **Duration**: 150–250ms for UI. Exits about 2/3 of enter time.
- **Easing**: Ease-out. Never bounce.
- **Animate transform and opacity only.** Never `transition: all`.
- **One motion moment per view at most.** No fade-in on every section. No page-load choreography in apps.
- **Respect reduce-motion.**
- **Nothing moves on its own** without a pause control.

## Accessibility and performance
- **Semantic HTML before ARIA.** No clickable divs.
- **Icon-only buttons need a label.**
- **Visible focus on every interactive element.** Focus order matches visual order.
- **Images have width and height.** Lazy-load below the fold.
- **Virtualize lists over 50 items.**
- **Layout shift under 0.1. Tap feedback under 100ms.**

## AI slop to never ship
- Colored stripe on any edge of a card
- Border around every block, or boxes in boxes
- Shadow on resting cards, or border plus wide shadow
- Eyebrow labels or pill badges above headings
- Uppercase anywhere
- 01/02/03 section numbers unless it's a real sequence
- Icon in a rounded tile above a heading
- Identical icon + heading + text card grids
- Hero metric template (big number, small label, gradient)
- Badges and dots that mean nothing ("NEW", "LIVE", "AI")
- Emoji icons
- Gradients, gradient text, glow, neon, radial halos, grid or stripe backgrounds
- Frosted glass used as decoration
- Monospace as decoration
- Italic serif or colored accent word in headlines
- Same radius on every element
- Light gray text that fails contrast
- Fade-in on every block, pulsing dots, marquees, bounce easing
- Overstuffed dashboards: insight banners, tips, checklists, "what's new"
- Placeholder avatars, grey logo boxes, fake testimonials, fake stats
- Every action visible at all times
- Banned words in copy

## After building: verify
1. **Look at it rendered.** Screenshot at 390 and 1440. Toggle dark mode once.
2. **Critique the screenshots.** Fix the top 3 problems. Up to 3 rounds.
3. **Run the review checklist below.**
4. **If installed, run an automated audit:** impeccable (github.com/pbakaus/impeccable) or Vercel web-design-guidelines (github.com/vercel-labs/agent-skills). These rules win over theirs.
5. **Report:** contrast pairs under 4.5:1, every file edited, every deviation from DESIGN.md.

## Sources
- Steve Krug, *Don't Make Me Think*
- Adam Wathan & Steve Schoger, *Refactoring UI*
- Apple Human Interface Guidelines
- Nielsen Norman Group heuristics
- Dieter Rams, ten principles of good design
- Jon Yablonski, *Laws of UX*
- Paralect, "Signs of AI slop in design"
- Kosta Canatselis, "Spot the Slop"
- Maya Brennan, "How to de-slopify your designs"
- Lumenridge, "Build your Product Design Harness"
- anthropics/skills (frontend-design)
- Leonxlnx/taste-skill
- pbakaus/impeccable
- vercel-labs/web-interface-guidelines
- google-labs-code/stitch-skills
- shadcn-ui skill
- nextlevelbuilder/ui-ux-pro-max-skill
- VoltAgent/awesome-design-md

## Review checklist
1. Did I follow the design system and use tokens only?
2. Does this screen feel like the same app as every other screen?
3. Did I reuse existing components and states instead of inventing new ones?
4. Is every spacing value a multiple of 4?
5. Is there one font family, 3–5 named styles, and no uppercase?
6. Any colored or accent border? Remove it. Zero allowed.
7. Any shadow on something that doesn't float? Remove it.
8. Does every color have one meaning, the same on every screen? Is the accent scarce?
9. Is there one primary action, and does it stand out?
10. Can any element, word, border, or divider be removed?
11. Is there happy talk, instruction text, Title Case, or a banned word? Cut it.
12. Is hierarchy shown with size, weight, tone, and space, not boxes?
13. Are all states designed: empty, loading, error, disabled, focus?
14. Does contrast pass, and is focus visible everywhere?
15. Does anything from "AI slop to never ship" appear?
16. Did I compare against real Mobbin references?
17. Did I write new reused patterns back to DESIGN.md?
