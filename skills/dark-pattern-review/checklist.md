# Dark Pattern Review — Checklist

Use during PR/design review. Mark **Pass / Fail / N/A**. Any **Fail** in a Critical row blocks ship until remediated or explicitly risk-accepted by PM + Legal/Privacy.

## A. Consent & privacy (Critical when personal data / tracking present)

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| A1 | Non-essential processing requires affirmative opt-in (no pre-checked boxes) | | |
| A2 | Reject / essential-only is available at the same layer and comparable prominence as Accept all | | |
| A3 | Purposes are specific and separable (analytics ≠ marketing ≠ third-party ads) | | |
| A4 | Withdrawal path is as easy as giving consent (in-product, not only email) | | |
| A5 | Copy does not disguise tracking as “personalization” without explanation | | |
| A6 | Cookie/paywall does not force non-essential tracking to access core content (flag for legal) | | |

## B. Friction symmetry (Critical for subscribe/cancel, install/uninstall, connect/disconnect)

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| B1 | Stop path step-count ≤ start path + 1 (or documented security exception) | | |
| B2 | No mandatory phone/chat gate to cancel if signup was self-serve | | |
| B3 | Retention offers are skippable; not an endless loop | | |
| B4 | Downgrade/delete account available without shame scripts | | |
| B5 | Unsubscribe from email works in ≤2 clicks and does not re-subscribe via dark toggles | | |

## C. Disclosure & money

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| C1 | Total price, period, and renewal visible before payment commitment | | |
| C2 | Trial end date and post-trial charge stated at card capture | | |
| C3 | No hidden pre-selected add-ons or paid extras | | |
| C4 | Scarcity/urgency claims are true and auditable | | |
| C5 | “Free” is not used when a paid conversion is the default outcome without clear labeling | | |

## D. Choice architecture

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| D1 | Decline/No controls are visible without hover/scroll tricks | | |
| D2 | No confirmshaming on decline CTAs | | |
| D3 | Visual weight of Accept vs Decline is roughly balanced (or justified by safety) | | |
| D4 | Defaults favor privacy/user autonomy unless user benefit is clear and disclosed | | |
| D5 | After dismiss/refuse, no immediate re-nag (define cooldown) | | |

## E. Forced action & sneaking

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| E1 | Account creation not required before value unless essential | | |
| E2 | Permissions requested just-in-time with clear why; no bundle of unrelated permissions | | |
| E3 | No sneaking into newsletters, paid tiers, or data shares via unrelated CTAs | | |
| E4 | Social proof is real (no fabricated live viewer counts) | | |

## Quick severity guide

| If you see… | Severity |
|-------------|----------|
| Pre-checked non-essential consent / reject buried | Critical |
| Cancel requires human channel; signup did not | Critical |
| Surprise charge after trial without clear prior disclosure | High–Critical |
| Confirmshaming / mild hierarchy bias only | Medium |
| Single extra optional survey on cancel | Low–Medium |

## Reviewer sign-off

- [ ] Checklist complete  
- [ ] Findings filed in Output Schema  
- [ ] Legal/Privacy pinged if A\* or C\* Critical fails  
- [ ] Owner: _______________ Date: _______________
