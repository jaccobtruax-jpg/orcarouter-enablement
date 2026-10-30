# OrcaRouter AE Knowledge Base (Hermes skills)

Knowledge base for Account Executives, packaged as Hermes Agent skills. This is the distilled OrcaRouter knowledge: product facts with claim caveats, pricing and deal structure, the competitive landscape, the sales playbook, brand voice, and market signals. Install all six on any AE Hermes instance.

## What's inside

| Skill | What it gives you |
|---|---|
| `orca-product-kb` | What OrcaRouter is, how routing works, security/compliance capabilities, headline claims WITH the caveat that goes with each, claim hygiene rules |
| `orca-pricing-kb` | Tiers, the floor-not-fee deal structure, worked deal math, BYOK, pilot-to-commit motion, which pricing figures are live vs stale |
| `orca-competitive-kb` | Competitor files (OpenRouter, LiteLLM, Martian, NotDiamond, Weave, Nadir, in-house, direct), RouterArena picture, counters, honest weak spots |
| `orca-sales-playbook-kb` | Three pillars, four pitches, 30-second pitch, discovery script, the close, follow-up motion, objections, ICP + urgency signals, the 20-account playbook |
| `orca-brand-voice-kb` | "The Honest Broker with Teeth" personality, six voice principles, tone chart, persona-adapted sales voice, traps |
| `orca-market-signals-kb` | User segments, warm inbound signals, community metrics, reputation watch, ecosystem partners |

## Install on an AE Hermes instance

### Fastest: one command (installs all six)

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/jaccobtruax-jpg/orca-ae-kb/main/install.sh)"
```

This copies all six skills into `~/.hermes/skills/business/`. They load on the next Hermes session. Note: a bare repo link is not enough for an agent to know this material; the files have to be in the agent's skills directory, which this command does.

### Alternative: one command per skill (URL install works on short paths)

```bash
hermes skills install -y "https://raw.githubusercontent.com/jaccobtruax-jpg/orca-ae-kb/main/skills/business/orca-product-kb/SKILL.md"
hermes skills install -y "https://raw.githubusercontent.com/jaccobtruax-jpg/orca-ae-kb/main/skills/business/orca-pricing-kb/SKILL.md"
hermes skills install -y "https://raw.githubusercontent.com/jaccobtruax-jpg/orca-ae-kb/main/skills/business/orca-competitive-kb/SKILL.md"
hermes skills install -y "https://raw.githubusercontent.com/jaccobtruax-jpg/orca-ae-kb/main/skills/business/orca-sales-playbook-kb/SKILL.md"
hermes skills install -y "https://raw.githubusercontent.com/jaccobtruax-jpg/orca-ae-kb/main/skills/business/orca-brand-voice-kb/SKILL.md"
hermes skills install -y "https://raw.githubusercontent.com/jaccobtruax-jpg/orca-ae-kb/main/skills/business/orca-market-signals-kb/SKILL.md"
```

Install all six together. The skills cross-reference each other via `related_skills`; a partial install leaves gaps.

If the URL install fails (the CLI fetcher chokes on some paths), manual fallback: copy each `SKILL.md` to `~/.hermes/skills/business/<skill-name>/SKILL.md` on the target machine. The skill loads on the next session.

## Usage notes

- Skills load when their trigger matches; the descriptions are written as triggers ("Use when..."). An AE Hermes agent picks up the right KB page by itself.
- Every skill carries a verification checklist. Run it before sending anything prospect-facing.
- Claim hygiene is non-negotiable and repeated in `orca-product-kb`: vendor-reported figures get labeled, the live RouterArena board beats the stale fork README, and fee/BYOK specifics always point at orcarouter.ai/pricing.

## Keeping it current

Source of truth is the OrcaRouter knowledge wiki (`~/wiki` on the enablement machine). When the wiki changes (pricing, board position, new competitors, new playbook versions), refresh the affected SKILL.md, bump `version` in the frontmatter, and commit. The install URLs above stay stable; content updates flow to AEs on re-install.

## License

Internal sales enablement material. Public repo so AE Hermes instances can install without credentials; treat contents as confidential company knowledge.
