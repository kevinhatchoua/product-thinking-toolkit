# Accessibility Review — Checklist (WCAG 2.2 oriented)

Automated scan attached? Y/N Tool: ___________ (not sufficient alone)

## A. Keyboard & focus

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| A1 | All interactive elements reachable via Tab/arrows as appropriate | | |
| A2 | Focus visible on every focusable control | | |
| A3 | Tab order matches reading/visual order | | |
| A4 | No keyboard trap | | |
| A5 | Dialogs/drawers: move focus in, trap, Esc, restore focus | | |
| A6 | Skip link or landmark bypass for repetitive nav | | |
| A7 | Dragging has a non-drag alternative (2.5.7) | | |
| A8 | Pointer targets adequately sized/spaced (2.5.8) | | |

## B. Screen reader semantics

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| B1 | Controls have accessible names (not placeholder-only) | | |
| B2 | Roles correct; no contradictory ARIA | | |
| B3 | Headings hierarchical; landmarks present | | |
| B4 | Images/icons: alt or aria-hidden if decorative | | |
| B5 | Tables: header association; caption when needed | | |
| B6 | Status messages announced (4.1.3) without spam | | |
| B7 | Dynamic AI/async updates announced appropriately | | |

## C. Perceivable presentation

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| C1 | Text contrast ≥ 4.5:1 (AA) / 7:1 if AAA claimed | | |
| C2 | Non-text contrast for UI components/graphics (1.4.11) | | |
| C3 | Color not sole status channel (1.4.1) | | |
| C4 | Reflow / 200% zoom usable | | |
| C5 | Text spacing / resize doesn’t clip content | | |
| C6 | Motion: `prefers-reduced-motion` honored; no unexpected animation | | |

## D. Understandable & cognitive

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| D1 | Labels permanent and clear; instructions available | | |
| D2 | Consistent navigation and identification | | |
| D3 | Errors identified, described, suggested fix | | |
| D4 | Timeouts warned with extend option | | |
| D5 | Information chunked; jargon explained or humanized | | |
| D6 | Avoid simultaneous multi-alert overload | | |

## E. Complex widgets (charts, maps, AI panels)

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| E1 | Data available in text/table form | | |
| E2 | Custom widgets follow expected keyboard paradigm | | |
| E3 | Loading/error/empty states accessible | | |

## Severity quick guide

| Barrier | Severity |
|---------|----------|
| Keyboard trap / unlabeled primary control / SR can’t complete task | Critical |
| Missing dialog focus management / hover-only actions | Critical–High |
| Contrast AA fail / color-only status | High |
| Live region missing on important status | Medium–High |
| Cognitive overload without task failure | Medium |

## Sign-off

- [ ] Keyboard pass completed manually  
- [ ] SR spot-check completed (specify AT: __________)  
- [ ] Output Schema completed  
- [ ] Owner: _______________ Date: _______________
