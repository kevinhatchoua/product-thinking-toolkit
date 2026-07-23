# Accessibility Review — Additional Examples

## Example 1: Pass — Modal create flow

### Input
“Create cluster” button opens dialog; focus to title; trap active; Esc/Close restore focus; fields labeled; inline errors linked with `aria-describedby`; submit disables with `aria-busy` and polite status “Creating cluster.”

### Expected
Keyboard & SR **4–5**. Still check contrast and timeout if long-running.

---

## Example 2: Fail — Custom select div soup

### Input
Dropdown built from `<div onclick>`; no `role="listbox"`, no arrow keys, focus outline removed in CSS (`outline: none` globally).

### Expected
Critical keyboard/SR failures (2.1.1, 2.4.7, 4.1.2). Recommend design-system Select.

---

## Example 3: Edge — Live region spam from AI tokens

### Input
Every streamed token updates `aria-live="assertive"`.

### How to score
Fail 4.1.3 *quality* / usability for SR. Remediate: announce start + completion (and errors), not each token; use polite.

---

## Example 4: AAA stretch

### Input
Product claims AAA. Body text contrast 4.6:1; no section headings on long docs; no extended timeouts beyond AA.

### Expected
Call out AAA gaps (e.g., 1.4.6 Contrast Enhanced) separately from AA blockers; do not allow AAA marketing claim.
