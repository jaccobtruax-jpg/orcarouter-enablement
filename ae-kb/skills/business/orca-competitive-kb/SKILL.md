---
name: orca-competitive-kb
description: 'Use when a prospect brings up a competitor or alternative (OpenRouter, LiteLLM, Martian, NotDiamond, Weave, Nadir, building in-house, direct providers), when preparing battlecards or comparison content, or when checking current RouterArena standings. Encodes the competitor files, the honest weak spots, and the live-research-first rule for pricing claims. Includes the confirmed Stripe/OpenRouter acquisition and the corrected OpenRouter feature state (Aug 2026).'
version: 1.1.0
author: OrcaRouter Sales Enablement
license: internal
metadata:
  hermes:
    tags: [orcarouter, competitive, battlecard, openrouter, litellm, routing, knowledge-base]
    related_skills: [orca-product-kb, orca-pricing-kb, orca-sales-playbook-kb, orca-brand-voice-kb, orca-market-signals-kb]
---

# OrcaRouter competitive landscape (AE KB)

## Overview

A company can consume AI inference five ways: direct to providers, build in-house, an open-source gateway, an aggregator, or a commercial router. OrcaRouter competes with all five, and the honest framing is that different alternatives lose on different dimensions. The differentiation rests on three claims: (1) learned, not static, routing; (2) 0% margin, so incentives are aligned with the buyer; (3) built-in governance, one control point.

## When to use

- A prospect says "we already use X" or "we're evaluating Y"
- You are building a battlecard, comparison sheet, or deck page
- You need the current RouterArena picture or a competitor's pricing model
- You are prepping for an objection that names a specific vendor

## The five alternatives, one table

| Option | Adaptive routing | Token margin | Governance | What stays the buyer's job |
|---|---|---|---|---|
| Direct to providers | None | None | Per provider | Model choice, failover, cost control, one console per vendor |
| Build in-house | Whatever you build | None | Whatever you build | Re-benchmarking a moving catalogue forever, with their own headcount |
| OSS gateway | Static rules | None | Partial | Operating it, and the routing policy it does not have |
| Aggregator | Limited | 5-20% | Limited | Accepting a margin whose incentive runs against their bill |
| **OrcaRouter** | **Learned, online** | **0%** | **Built in** | Choosing the objective. We do the rest. |

## Competitor files

### OpenRouter (aggregator archetype; the one everyone names)
- Closed SaaS aggregator. CONFIRMED: **Stripe acquired OpenRouter for ~$7.5B on Aug 19, 2026** (NYT, Bloomberg, CNBC, Reuters; Forbes says "over $8B"; closing "in coming weeks" per OpenRouter's own blog). WSJ reported talks 7/23; deal clinched ~8/16. That is now a fact you can state, but quote the range and the source, and use it as category signal: the market priced neutrality at $7.5B, and then bought it.
- Money model (live docs, verified 8/22/26): NO markup on inference pricing, BUT **5.5% fee on every credit top-up via Stripe ($0.80 minimum; 5% crypto)** + **5% BYOK fee** above a free allowance measured by list-price spend ($25K/mo pay-as-you-go, $200K/mo enterprise). Credits expire after 1 year; refunds only within 24h; no volume discounts. Their revenue grows with your bill: fee on spend, not on routing value.
- Routing tech (live docs, 8/22/26): **Auto Router is market-share routing** — classifies each prompt into ~30 task types, picks models by what the OpenRouter community spends on over a trailing 7-day window, filtered by cost tier. It learns from everyone else's traffic, not yours. That is the structural counter.
- Feature state CORRECTION (8/22/26): OpenRouter now HAS Fusion (panel of up to 8 models + analyst), guardrails (budgets, regex content filters, hierarchy), workspaces, SSO/SAML, SCIM, ZDR policies, BYOK with per-key filters, server tools, trace broadcast. **Do not claim they lack these.** Still absent vs OrcaRouter: Named Routers, Routing DSL (YAML+CEL with shadow/canary), per-user scoped keys with model limits, signed verifiable compliance reports, zero retention as default, open source (OpenRouter remains closed SaaS; we are open core via Continuum-AI-Corp/OrcaRouter-O2).
- Ownership angle for enterprise accounts: Series B (5/28/26, $113M) was led by CapitalG (Alphabet) with NVentures (NVIDIA), **ServiceNow Ventures, MongoDB, Snowflake, Databricks**, AMP PBC, Pace Capital + existing a16z and Menlo Ventures. If a prospect's data-plane partner is in that list, their routing layer and their platform vendor are not independent.
- Counter line, memorized: **"OpenRouter routes. OrcaRouter governs. They take a fee on your spend; we take a subscription. They route by what everyone else spends on; we learn from your workload."** Full rep-facing analysis: `references/openrouter-case-study-2026-08.md`.
- Post-acquisition move already live: **Stripe Projects launch partner** — `stripe projects add openrouter/api` provisions an account with unified Stripe billing. The payment processor is productizing the router.

### LiteLLM (OSS gateway archetype; the one deals actually get lost to)
- Fully open source, free to self-host forever; Enterprise priced "never per token."
- Honest counter: **they cannot win on price.** The counter is the ops burden of re-benchmarking a moving catalogue forever. A router you have to keep tuned is a headcount line, not infrastructure.
- Static rules vs learned routing. No security/compliance machinery at OrcaRouter's depth.

### Martian and NotDiamond (routing peers)
- RouterArena (board pushed 8/20/26): Martian entry (routerbench_mlp) 61.62 accuracy at $4.83/1K; NotDiamond 60.83 at $4.10/1K. OrcaRouter-Adaptive 75.54 at $1.00/1K. Worse accuracy at 4-5x the cost. Beaten double-digits on RouterArena.
- Both are commercial routers; neither is a governance play.

### Weave Router (HIGH threat; aimed at the same Claude Code / Codex / Cursor buyer)
- #10 on the live board (72.82 arena, 76.32 accuracy, $0.94/1K — note: beats us on raw accuracy at slightly lower cost; do not oversell "frontier" against them). Engineering-intelligence suite; Pro $50/engineer/mo + free tier + enterprise.
- Counter: seat-priced tooling vs our 0%-markup gateway; no compliance stack, no model-catalog breadth.

### Nadir Router (HIGH threat)
- #11 on the live board (72.29 arena, 75.01 accuracy, $0.68/1K) plus Nadir-Tumbler at #5 (75.17 arena, 75.34 accuracy, $0.08/1K). Verifier-gated cascade; savings-share pricing: 25% of the first $2K savings/mo, 10% above, nothing if no savings.
- Counter: a share of your savings is still a fee on spend. No governance/SLA/compliance machinery; single-vendor dependency. The savings-share model punishes the vendor for being right: the better it routes, the less it earns.

### Others on the board (31 entries, pushed 8/20/26)
- Above us are mostly research/free baselines: Paix2 (#1, 79.69 acc), Sqwish Router (#2, 79.76 acc — company but no standalone router SKU, MEDIUM threat), Divyam (#3), Cross-Router (#4), vllm (#6, free OSS), nadir-caliper (#7), AgentForge Router (#8), BARouter (#9).
- Auto Router (#18, 70.05 arena) is RouterArena's own baseline, NOT OpenRouter's submission.
- Azure (#17, 72.94 acc, $0.73/1K) and GPT-5's internal router (#23, 73.96 acc, $10.02/1K) rank below us; GPT-5's internal routing costs 10x per query at comparable accuracy — the accuracy-cost story holds against every big-vendor entry.
- RouteLLM (#30, 48.07) — open-source router, no commercial motion.

## Benchmark picture (RouterArena, live board pushed 2026-08-20)

| Router | Accuracy % | Cost/1K | Arena |
|---|---|---|---|
| Sqwish Router | 79.76 | $0.70 | 76.21 |
| Weave Router | 76.32 | $0.94 | 72.82 |
| **OrcaRouter-Adaptive** | **75.54** | **$1.00** | **72.08** |
| Nadir Router | 75.01 | $0.68 | 72.29 |
| GPT-5 | 73.96 | $10.02 | 64.32 |
| Azure | 72.94 | $0.73 | 70.42 |
| Martian (routerbench_mlp) | 61.62 | $4.83 | 57.56 |
| NotDiamond | 60.83 | $4.10 | 57.29 |

Live board position (8/20/26): **#12 of 31 by arena score (72.08), accuracy 75.54 at $1.00/1K**. Dropped from #8/27 as research/OSS baselines joined. Honest pitch: we hold the frontier among *commercial routers with a $0-markup business model*, and we beat GPT-5's internal routing 10:1 on cost at better accuracy. The "75.5 to 99% with escalation" figure is vendor-reported production config, not a leaderboard number.

## Counter lines by scenario

- "We use OpenRouter" -> "OpenRouter routes. OrcaRouter governs. They take 5.5% on every credit top-up and 5% on BYOK above the allowance; we take a subscription and $0 per token. Their Auto Router picks models by what everyone else spends on; ours learns from your workload. And as of last month, the neutral marketplace is owned by a payment processor."
- "We'll build this in-house" -> "Most teams spend 3-6 months building multi-model routing, streaming failover, and stream-safe guardrails. And then they own the re-benchmarking forever."
- "LiteLLM is free" -> "Free to run, expensive to operate. Someone on your team owns re-benchmarking a moving catalogue forever. That is a headcount line, not infrastructure. And it routes with static rules."
- "We're happy with OpenAI" -> "It's insurance, and insurance that pays for itself."
- "We built failover internally" -> "What about partial failures where the model returns garbage instead of errors?"
- "Savings-share sounds cheap" (vs Nadir) -> "A share of your savings is still a fee on spend. And the better it routes, the less it earns, which is an incentive pointed the wrong way. We make $0 from how we route you."
- "Seat pricing is simple" (vs Weave) -> "Seat-priced tooling bills you for engineers, not for savings. We bill $0 per token and $0 per engineer; the commit is a floor on the spend we cut."

## Honest weak spots (know them before the prospect does)

- Benchmark numbers are self-reported; the defense is the replay pilot, not the leaderboard.
- "1M decisions" and "40%+" figures are vendor claims.
- The 5-20% aggregator margin band is the deck's framing, not a neutral market measure.
- OpenRouter acquisition figure: ~$7.5B (NYT/Bloomberg/CNBC/Reuters) vs "over $8B" (Forbes). Quote the range and source; never a bare number.
- OpenRouter's feature parity is closer than our old material claimed (Fusion, guardrails, workspaces all exist now). Win on incentive, learning, governance depth and openness, not on "they don't have Fusion."
- Weave Router beats our raw accuracy (76.32 vs 75.54) at slightly lower cost. Don't pitch "frontier" against them; pitch seat pricing vs subscription, and governance.
- Provider count: 11 documented prefixes, 7 returned by the API. Don't overpromise coverage.
- LiteLLM genuinely is free forever; the counter is ops burden, so don't fight it on price.
- The fork README and any Aug-19-era wiki note are stale (board was #8/27 then; live board is #12/31). Always check the live board before quoting any rank.

## Live-research-first rule

Never rely on memory for a competitor's current pricing or a leaderboard position. Before any prospect-facing comparison: scrape the competitor's pricing page, check the live RouterArena board, and archive the intel. Pricing pages change without notice (OpenRouter's BYOK basis changed from request count to list-price spend between our Aug 19 and Aug 22 checks).

## Common pitfalls

1. Fighting LiteLLM on price. You lose; the win is ops burden and learned routing.
2. Reciting OpenRouter's fee stack or the $7.5B from memory without a source. Quote the range and date; fees and terms moved once already this month.
3. Quoting "ranked #8" or any stale board position. Live board is #12/31; pitch the commercial-router frontier, not a number.
4. Claiming OpenRouter lacks Fusion/guardrails. They shipped both; you lose credibility on the first check.
5. Forgetting the honest weak spots. Credibility requires acknowledging where competitors are strong.
6. Describing Nadir's savings-share as "cheap." It is a fee on spend, and misaligned by construction.

## Verification checklist

- [ ] Competitor pricing checked live, not from memory
- [ ] Leaderboard position checked against the live board (routeworks.github.io/leaderboard)
- [ ] Every vendor figure labeled vendor-reported where applicable
- [ ] Weak spots acknowledged in the same conversation as the counters
- [ ] OpenRouter claims sourced with date (acquisition ~$7.5B 8/19/26; fee stack verified 8/22/26)
- [ ] Reference file read when a prospect drills into OpenRouter: `references/openrouter-case-study-2026-08.md`
