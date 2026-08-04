# Deceptive Pattern Review — Additional Examples

## Example 1: Pass — Consent banner with parity

### Input
First-layer banner: “We use cookies for essentials and, if you agree, analytics.” Buttons side-by-side: **Reject non-essential** | **Accept analytics**. “Customize” opens toggles all off by default for non-essentials. Footer link “Privacy choices” withdraws prior consent in one step.

### Expected verdict
**Overall 5/5** on consent integrity. Persuasion may still occur in body copy; no finding unless copy misstates purposes.

---

## Example 2: Fail — Confirmshaming + obstruction on logout of free tier

### Input
User clicks “Not now” on upgrade modal. Button label: “No thanks, I hate saving time.” Modal reappears every navigation for 10 minutes. Settings → Notifications has email marketing on by default with label “Recommended.”

### Findings to expect
1. Confirmshaming (Medium–High)  
2. Nagging after refusal (High)  
3. Pre-enabled marketing default (High) if it sends mail without prior opt-in  

**Overall ≤ 2/5**

---

## Example 3: Edge — Security-friction exception

### Input
Disabling SSO-enforced org access requires admin approval + waiting period. Signup for org members is invite-only (also gated).

### How to score
Friction asymmetry alone is **not** a deceptive pattern if both directions are gated for security and disclosed. Check for **sneaking** (e.g., hidden paid seats) separately. Score Friction symmetry **N/A** or **4–5** with note: “security-justified parity.”

---

## Example 4: SaaS permission request

### Input
Mobile app prompts on first launch: “Allow contacts, location, microphone, notifications” in one system dialog equivalent (or sequential forced prompts) before any feature use. Copy: “Enable all to continue.”

### Findings to expect
Forced action + bundling (High–Critical). Remediation: progressive, feature-tied requests with ability to use core app without non-essential permissions.
