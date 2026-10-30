---
name: orca-market-signals-kb
description: 'Use when researching who actually uses OrcaRouter, evaluating inbound or community signals, checking live benchmark standings before quoting a rank, or deciding whether a company is a prospect, a champion, or an ecosystem partner. Encodes the user segments, the warm-lead roster, community metrics, and the reputation watch items that keep reps from quoting stale numbers.'
version: 1.0.0
author: OrcaRouter Sales Enablement
license: internal
metadata:
  hermes:
    tags: [orcarouter, market, signals, community, users, benchmarks, knowledge-base]
    related_skills: [orca-product-kb, orca-pricing-kb, orca-competitive-kb, orca-sales-playbook-kb, orca-brand-voice-kb]
---

# OrcaRouter market signals (AE KB)

## Overview

Who actually uses the product, what the community looks like, and which numbers to trust when. This is the "know the market" layer: segments with evidence, warm inbound signals, ecosystem partners, and the reputation watch list that stops reps from quoting stale ranks or outdated claims.

## When to use

- Evaluating a lead: is this a prospect, a champion to nurture, or a partner play?
- Quoting community traction, followers, downloads, or benchmark positions
- Researching a company for outreach and checking for warm signals (forks, stars, integrations)
- Deciding where to spend effort: pipeline vs ecosystem vs community

## Segments (with evidence, researched Aug 2026)

1. **Local-model / self-hosted enthusiasts** (top-of-funnel flywheel, NOT pipeline). Qwen3.8-27B-Uncensored-FP8: 45,465 gated downloads in ~3 days, 526 likes, recently trending on HF; 7.26M X views, 6,933 likes, 6,437 bookmarks (93% of likes are save-for-later); GGUF (Ollama) / MLX (Mac) / BF16 requests; third-party quants (one with 16K GGUF downloads). These people evangelize; they rarely buy.
2. **Cost-conscious devs on the free tier.** Tutorial repos in 8 languages, Japanese Node.js samples, YouTube reviewers (17 videos, up to 13.2K views) framing the product as "stop overpaying."
3. **Coding-agent users.** Claude Code / Codex / Copilot CLI / Pi / OpenClaw / Hermes setup guides. Notably: shyim, a prominent PHP/Shopware developer, built a `pi-orcarouter` plugin with real cost tracking. Your ecosystem already routes through us.
4. **Platform/agent engineers at startup scale** (the best pipeline evidence). JhaSourav07 (Sourav Jha): 3 real production bugs filed (streaming GeneratorExit, API-key timestamp data loss, multi-worker cache desync) + 2 fix PRs + the only maintained fork. A user running Lite for real: prime ICP/champion, nurture not sell.
5. **Ecosystem / partnership.** Lulu MCP marketplace (indexed #17, CEO engaged), SkyDeck AI / mseep-ai (backlink PR), Apify store listing, Mastra (81 models), Promptfoo, Arize AI tracing docs (listed beside OpenAI/Anthropic/OpenRouter), Kilo (BYOK post). Integration distribution, not prospects.
6. **Researchers / competitors.** arXiv paper, RouterArena submission, RouteWorks parent repo. HN: 2 posts, 0 comments (no organic traction yet). Reddit: no presence.

## Warm inbound signals (Aug 2026)

- **RealTime Clinic (Dallas, healthcare)**: starred AND forked OrcaRouter-Lite (GitHub user swami8791). Evaluating/deploying for clinic agent infra. Warmest inbound signal on record. Healthcare wedge: "We make AI HIPAA-compliant at the gateway level."
- **Grafton Apparel (Toronto, retail enterprise)**: fork (JungleM0nkey).
- **shyim**: prominent Shopware developer with a real integration plugin. Reinforces the Shopware wedge: "your ecosystem already routes through us."
- **JhaSourav07**: production user + contributor. Champion/nurture, not sales.
- Starred-and-forked is the strongest signal in this list: a star is interest, a fork is intent.

## Community metrics (Aug 2026 snapshot)

X @OrcaRouter: ~7.7K followers (+~15/day), ~2.6K posts (~23/day, agentic cadence), org-verified. LinkedIn 1,241. Discord 536 members / 57 online, free tier. Base repo: 533 stars, 82 forks, ~60.5K HF downloads. 12-language README, Japanese docs, Chinese directories (bai.tools, bataitools), Russian video community. A guardrail bug was acknowledged publicly (CSAM/CBRN false positives, "shipping a fix shortly") and the fix shipped; own it if it comes up, never deflect.

## Reputation watch (IMPORTANT)

- Live board (routeworks.github.io/leaderboard, 27 routers): OrcaRouter-Adaptive is **#8/27 by arena score (72.08)**, accuracy **75.54** at $1.00/1K. Still beats GPT-5 baseline (73.96 accuracy at $10.02/1K = 1/10 the cost). #1 is Cross-Router (76.12).
- The Continuum RouterArena **fork README is stale** (shows OrcaRouter #2, Sqwish #1). The daily watcher reads that fork; the real board has passed us since. The paper's "#2 at submission" must NOT be quoted as current.
- Sales implication: pitch the accuracy-cost frontier (75.5% vs GPT-5 at 1/10 cost), never "ranked #2 on RouterArena."

## Recurring community questions and objections

- "Can I run it locally?" (GGUF/MLX/BF16: yes, and the team ships fast).
- Pricing scrutiny ("$4 for 1M output?!"): the $0 fee column is the answer; per-model rates are the provider's.
- Guardrail false positives: acknowledged and fixed publicly; know the fix before the question lands.
- Unanswered publicly: CyberBench scoreboard, BF16 weights. Do not overpromise on either.

## Ecosystem partner list (distribution, not pipeline)

Apify, Mastra, Promptfoo, Arize, Kilo, Lulu MCP, SkyDeck AI. If a lead shows up through these, the integration is the relationship; the sale is secondary.

## Common pitfalls

1. Treating free-tier enthusiasts as pipeline. They are the flywheel; they do not buy.
2. Quoting "ranked #2" or the paper's submission rank. The live board is #8/27; the pitch is the frontier.
3. Quoting community numbers without the date. X followers move ~15/day; the snapshot decays fast.
4. Selling to JhaSourav07-style contributors. They are champions; treat them like one.
5. Missing fork/star signals in prospect research. Starred-and-forked is the strongest warm signal available.

## Verification checklist

- [ ] Any rank or benchmark checked against the LIVE board before quoting
- [ ] Community figures dated in the message
- [ ] Lead classified: prospect, champion, ecosystem, or flywheel
- [ ] Stale fork-README numbers not used
- [ ] Guardrail-fix story ready if the objection surfaces
