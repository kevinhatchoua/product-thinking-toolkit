# Cognitive Bias Review — Additional Examples

## Example 1: Pass — Recommendation with consider-the-opposite

### Input
IAM “risky grant” reviewer shows: AI suggestion **Deny**, plus a panel “Reasons you might still Allow” with policy exceptions and last similar allow. Buttons: Allow / Deny equally weighted. Historical precision/recall shown.

### Expected
Automation calibration **4–5**. Confirmation risk low due to opposite panel.

---

## Example 2: Fail — Onboarding sunk-cost funnel

### Input
Setup wizard “78% complete.” Exit: “Are you sure? You’ll lose everything you’ve set up.” Data is actually saved as draft.

### Expected
Sunk cost **Fail** (High). Fix: “Your draft is saved. Exit and resume anytime.”

---

## Example 3: Edge — Helpful default vs status quo trap

### Input
Default encryption on; disable requires typing reason + dual control.

### How to score
Not a bias defect if friction protects safety and is disclosed. Score Status quo **Pass** with note: security-justified default. Fail only if disable is needed for legitimate ops and path is obscure without safety rationale.
