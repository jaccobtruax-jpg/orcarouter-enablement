---
name: orca-pricing-kb
description: 'Use when discussing OrcaRouter pricing, deal structure, SLG commitments, BYOK, pilot-to-commit motion, or answering "how do you make money" questions. Encodes the floor-not-fee semantics, the worked deal math, the no-discounting-$0 rule, and which pricing figures are live vs stale.'
version: 1.0.0
author: OrcaRouter Sales Enablement
license: internal
metadata:
  hermes:
    tags: [orcarouter, pricing, deals, slg, sales-enablement, knowledge-base]
    related_skills: [orca-product-kb, orca-competitive-kb, orca-sales-playbook-kb, orca-brand-voice-kb, orca-market-signals-kb]
---

# OrcaRouter pricing and deal structure (AE KB)

## Overview

OrcaRouter is funded by subscriptions and committed minimums, never by a margin on tokens. That is the whole business model, and it is the brand: "A router is only independent if nothing about your spend is its revenue." The pricing page shows an `OrcaRouter fee` column equal to $0.00 on every model.

## When to use

- A prospect asks how pricing works or "how do you make money with zero markup"
- You are structuring an SLG proposal or explaining the committed-minimum model
- You are quoting a monthly figure and need to know what is live vs stale
- A prospect pushes on price (the answer is never a discount)

## The two revenue models in AI gateways

1. **Margin model** (typical aggregator/gateway): 5-20% markup on tokens. The structural problem: a gateway paid a percentage of your tokens has an incentive to route you expensive. OpenRouter is the archetype (see `orca-competitive-kb`).
2. **OrcaRouter model**: 0% markup. Tokens pass through at the provider's published rate (cached reads at the provider's discounted cache rate). Revenue comes from paid plans and committed minimums.

## The tiers

- **Free tier**: acquisition. Rotating popular models, full catalogue, single user.
- **Team**: $499/mo on the live pricing page (re-verified 2026-10-30) for up to 10 seats (compliance enforcement, unlimited API keys, priority support). NOTE: earlier internal notes referenced ~$49/mo; the live page is authoritative. Re-verify against orcarouter.ai/pricing before quoting a number.
- **Enterprise / SLG**: volume-based, custom. This is where most deals land.

## SLG deal structure: the commit is a FLOOR, never a fee

Sales-led deals get the prospect to commit to a **set minimum monthly spend** with OrcaRouter. The semantics matter more than the number:

- The commit is a **floor on spend routed through the platform**, not an extra fee on top of tokens.
- If it were a fee, the savings math breaks: a $5k fee against a $10k/mo spend would eat the entire 30-40% saving. Never describe the commit as a fee, in writing or on a call.

Worked example (illustrative, from the deck):

- Today's monthly inference spend: $10,000
- Routing reduction at 40%: -$4,000, so new spend is $6,000
- Minimum monthly commit: $5,000 (floor: the tokens the prospect would buy anyway)
- Token markup: $0
- Net monthly saving: $4,000 = 40%, commit included

The line that carries the deal: **"The only thing we have to sell you is a smaller bill."**

Commercial logic from OrcaRouter's side: a guaranteed revenue floor per deal (a subset of post-routing spend flows through the platform no matter what), sold as aligned incentives. The prospect saves 30-40% net either way.

## BYOK

Customers can attach their own keys (OpenAI, Anthropic, Google, Azure). Negotiated rates, commitments, and data terms are unchanged; committed spend still draws down. BYOK traffic may carry a platform fee (docs default ~5%, configurable); quote the pricing page, never recite. For BYOK fee specifics, reference **orcarouter.ai/pricing**; never recite terms from memory.

## Pilot motion: how the deal de-risks before the commit

30-day staged pilot with criteria agreed up front:

- **Week 1**: offline replay on the prospect's logs. Measured deltas are their number, not ours.
- **Weeks 2-3**: shadow mode, mirrored traffic.
- **Week 4**: canary one workload, then the commit.

"Clear the threshold and we canary one workload, then the commit. Miss it and you walk, keeping the measurement." The POC wrapper is 90 days, monthly payments, exit anytime. POC rules: never refund or discount during POC, speed kills doubt.

## Cache warmth: the saving nobody counts

Prompt caching is priced per provider and per key. A gateway that load-balances mid-conversation destroys it. OrcaRouter pins a session to the same channel/key and accounts the saving per request. Good for FinOps conversations where the prospect already knows their cache hit rates.

## Price objection handling

- **Cardinal rule: you do not discount $0.** The answer to "can you do better on price?" is: "Our fee is $0.00 on every plan. The question is which plan features you need."
- **"How do you make money with zero markup?"** -> "OpenRouter makes money when you spend more. We don't."
- **Pricing anchor**: the alternative to buying is 3-6 months of engineering time to build multi-model routing, streaming failover, and stream-safe guardrails in-house. The old internal anchor line ("$499/mo is less than one day of an engineer") used a number that may predate the $49 Team tier; check the live page before quoting a specific figure, or anchor on engineering time instead.
- **Competitor counters** (savings-share pricing, seat pricing) live in `orca-competitive-kb`.

## Stale vs live figures (check before quoting)

| Figure | Status |
|---|---|
| $499/mo Team tier, 10 seats | Live pricing page (authoritative, re-verified 2026-10-30) |
| ~$49/mo Team tier | Stale internal note; live page shows $499/mo, do not quote |
| $25 signup credit | Does not exist on the live site; do not promise |
| $0 markup on tokens (Free/Team); BYOK may carry a platform fee | Live page; quote it |
| $10M annualized run-rate (Aug 2026) | PR context; category signal, not a deal stat |

## Common pitfalls

1. Describing the SLG commit as a fee. It is a floor on spend. One slip breaks the savings math and the trust.
2. Quoting ~$49/mo to a prospect. The live Team tier is $499/mo; verify before speaking.
3. Promising a $25 credit. It does not exist.
4. Discounting. There is nothing to discount; "you do not discount $0."
5. Letting "zero markup" sound promotional. It is structural: "the $0 is the point, not a launch promotion."

## Verification checklist

- [ ] Commit described as a floor on routed spend, never a fee
- [ ] Worked example math checks out (40% saving net of commit)
- [ ] Any monthly figure cross-checked against orcarouter.ai/pricing
- [ ] BYOK specifics deferred to the pricing page
- [ ] No discount offered or implied
