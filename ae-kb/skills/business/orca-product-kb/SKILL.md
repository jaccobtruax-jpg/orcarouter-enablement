---
name: orca-product-kb
description: 'Use when answering questions about OrcaRouter the product, explaining what it does, how routing works, its security/compliance capabilities, deployment options, or headline claims. Encodes product facts, the vendor-reported claim caveats, and the claim hygiene rules every AE must follow in front of a prospect.'
version: 1.0.0
author: OrcaRouter Sales Enablement
license: internal
metadata:
  hermes:
    tags: [orcarouter, product, knowledge-base, sales-enablement, claim-hygiene]
    related_skills: [orca-pricing-kb, orca-competitive-kb, orca-sales-playbook-kb, orca-brand-voice-kb, orca-market-signals-kb]
---

# OrcaRouter product knowledge (AE KB)

## Overview

OrcaRouter is an adaptive AI model-routing inference gateway. It sits in front of 200+ frontier and open models and decides, per request, which model serves it, so a company stops paying frontier prices for easy traffic. One OpenAI-compatible endpoint, zero markup on tokens, and a security layer (firewall, PII shield, compliance packs) that ships with the gateway rather than as separate products.

The company behind it is a group of AI researchers who "published the paper, then shipped the router." Sellers identify as FlashLabs (OrcaRouter is the infrastructure layer of a four-product GTM stack; see `orca-sales-playbook-kb`).

## When to use

- A prospect asks "what is OrcaRouter" or "how does routing work"
- You need product specifics: capabilities, security posture, deployment, integrations
- You are about to quote a headline number and need the caveat that goes with it
- You are writing an email, call script, or demo narrative and need a claim check

## What it is

- **One endpoint in front of 200+ models** (OpenAI, Anthropic, Gemini, Llama, Mistral, DeepSeek, Grok, Qwen, Moonshot, Cohere, AWS Bedrock, Azure OpenAI). Adoption is a one-line swap: change `base_url` to `https://api.orcarouter.ai/v1` and set `model = "orcarouter/auto"`. Naming a model explicitly bypasses routing.
- **Zero markup on API calls** (user-confirmed). For fee/BYOK specifics, reference **orcarouter.ai/pricing** in front of prospects, never recite from memory.
- **Open core**: the gateway is open source (MIT); the self-hostable distribution is Continuum-AI-Corp/OrcaRouter-Lite. Verify the exact repo name before naming it to a prospect. Line used with prospects: "the escape hatch that makes lock-in moot."
- **Free access tier** plus paid plans (see `orca-pricing-kb` for the exact tiers and the floor-not-fee deal structure).

## How routing works (plain-English version)

Most AI traffic is easy; all of it currently bills at the hard rate. A static rule or cost table can't tell a one-line classification from multi-step reasoning. OrcaRouter learns the difference. The deck's illustrative split: 62% routine, 27% mixed, 11% hard traffic, 100% billed at frontier rate today.

Four stages, microseconds on CPU, no extra model call, no GPU in the path:

1. **Signal extraction**: structural and semantic signals off the request (prompt length, reasoning cues, code/maths density, tool presence, declared output budget).
2. **Conditional preference**: a separate preference per model × output-budget band × task class. A model good at long-form reasoning is not automatically the right pick for a short tool call.
3. **Pool gating**: a difficulty score narrows the candidate set. Routine traffic never reaches a frontier model; hard traffic never lands on an economy one.
4. **Session escalation**: sessions stick within a tier; when post-response signals accumulate past a threshold, the session moves up and its channel pin follows (reversible, pin kept up to 30 days).

Two learning loops: **online** (every completed request writes quality-vs-cost back into the policy) and **offline** (replay re-runs logged traffic through a fresh policy, A/B-testing a change against the prospect's own history before it touches live requests).

Product details worth knowing:

- **Named routers** (`orcarouter/{name}`) support four strategies: cheapest, quality, balanced (low-cost option that still meets a quality bar, falling back to the best model if nothing does), and **adaptive**, which is a per-router LinUCB contextual bandit learning from real traffic.
- **Escalation** is the knob that separates the leaderboard entry from the production config: escalate only the hard requests to a stronger model, keep the easy ones cheap. Escalation ON is the production configuration.
- **Fallback chains**: ordered `extra_body.models` list, max 5 models (extras are silently truncated), fails only when every entry is exhausted, billed at the serving model's rate. Headers `X-Orca-Fallback-Level` / `X-Orca-Fallback-Model`. Streaming caveat: once any byte is sent, no fallback.
- **Cache-aware routing**: sessions pin to the same channel/key so provider prompt-cache discounts hold. Mid-conversation load-balancing destroys caching; OrcaRouter accounts the saving per request.

## Security, governance, and compliance

- Attested: SOC 2, GDPR, HIPAA, ISO 27001 (reports under NDA). 16-control status matrix: 12 shipped, 2 partial (self-hosted Helm/K8s; scoped data-plane tokens), 2 roadmap (tamper-evident audit chain; workload identity RFC 8693).
- **Zero data retention by default**: prompts/outputs processed in memory, never written to disk; only metadata retained. This is the default, not an opt-in checkbox.
- **Provider opacity**: no `provider` / `routed_to` header. "OrcaRouter is a single provider from your application's point of view."
- **Agent Firewall**: 4 surfaces (inbound, response, MCP, egress), 6 verdicts (allow / audit / deny / sanitize / pending_approval / cap_cost), tool-glob grammar, sanitizer presets (keys, emails, SSN, cards with Luhn), autonomy levels tight/balanced/permissive, one-click undo.
- **Compliance packs** (paid plan, Admin-gated install, observe-to-go-live): 32+ frameworks (soc2, hipaa, gdpr, eu_ai_act, iso_27001, pci_dss, hitrust, cmmc, owasp_llm, colorado_ai, regional privacy). Signed reports are SHA-256 + Ed25519 and **publicly verifiable without an account**. First PDF free; CSV/JSON and more reports paid. This paywall is the enterprise upsell path.
- **MCP gateway** with schema baselining (TOFU; drift fails closed), SSRF protection including DNS-rebinding defense.
- **Skills scanner**: 6 deterministic passes, risk score 0-100, bands low to critical, modes allow/quarantine/block; auto-detected capabilities quarantined until human review.
- **Deployment**: managed SaaS / private deployment (your cloud) / self-hosted Docker (master-slave; Helm in progress) / open-source Lite. Integrations: OpenTelemetry, Prometheus, SAML/OIDC, OpenAI-compatible SDKs, audit log export. 12+ tools with a one-line installer.

## Research and open source (the credibility layer)

- Paper: "OrcaRouter: A Production-Oriented LLM Router with Hybrid Offline-Online Learning", arXiv 2605.30736.
- Open weights on Hugging Face (huggingface.co/orcarouter), claimed top 20 globally across all published models. Example release: Qwen3.8-27B Uncensored FP8 (Aug 15, 2026) for red-team/security research, 7.3M views on X, gated downloads. Uncensored API pricing runs about $0.40/M input, $4.21/M output, gated to security researchers/red teams.
- Five research lines: routing, inference acceleration, red team, blue team, model security.
- Whitepaper: "AI Threat Report 2026" (35 pages, continuum01.ai/whitepapers), 14 threat classes mapped to OWASP LLM Top 10, CISO agenda chapter. Free gated-value asset for security buyers.

## Headline claims, with the caveat that goes with each

| Claim | Value | Caveat |
|---|---|---|
| Routing accuracy | 75.5% RouterArena base; 99% with escalation | Vendor-reported. The 99% is the production config (escalation on), NOT a leaderboard number. |
| Cost savings | 40%+ lower inference spend | "Internal benchmarks" per PR. Vendor claim. The 30-day replay pilot is how it becomes the prospect's number. |
| Quality delta | <1% (99% of target quality) | Vendor claim. |
| Markup | 0% on tokens (Free/Team); BYOK may carry a platform fee | Structural on tokens; BYOK terms on the pricing page. |
| Scale | 1M simultaneous routing decisions (peak) | Vendor claim. |
| Reliability | 100% observed uptime May-Aug 2026; 99.99% SLA (Enterprise); <50ms mid-stream failover | Status page showed all operational, zero incidents. |
| Decision cost | Microseconds, CPU; no extra model call; no GPU in path | Engineering fact, reproducible. |

## Claim hygiene rules (non-negotiable)

1. **Label vendor-reported figures.** "75.5% on RouterArena" gets the source attached. Anything from the deck or PR is "our internal benchmark" or "vendor-reported," never an independent fact.
2. **Never quote "ranked #2 on RouterArena."** The Continuum fork README is stale (shows #2); the live board has passed us (see `orca-market-signals-kb`). Pitch the accuracy-cost frontier, not a stale rank.
3. **The 99% escalation figure is production config, not a leaderboard entry.** If a prospect checks the board and sees 75.5, the answer is "that's the as-submitted entry; production runs with escalation on."
4. **Provider count caveat**: docs list 11 provider prefixes but the API returned 7. Clarify which are live vs documented. Don't overpromise.
5. **No "$25 signup credit."** The live site has no such credit; free credits only via the vouchers/offers page and they expire.
6. **OpenRouter's $7B acquisition is category signal, not a fact to state in front of a prospect** unless sourced in the moment.
7. **Fee/BYOK specifics: point at orcarouter.ai/pricing.** Never recite BYOK terms from memory.
8. **The defense against every skepticism is the 30-day replay pilot**: read-only replay of the prospect's logged traffic before any live routing. Measured deltas belong to the prospect. "We don't ask you to take 40% on faith."

## Common pitfalls

1. Reciting savings % or accuracy without the vendor-reported label.
2. Quoting the stale "ranked #2" from the fork README.
3. Promising provider coverage the API doesn't return (7 live vs 11 documented).
4. Describing the SLG commit as a fee (breaks the savings math; see `orca-pricing-kb`).
5. Forgetting the escape hatch: OrcaRouter is open core, and that is a feature to lead with against lock-in objections, not something to hide.

## Verification checklist

- [ ] Every headline number carries its caveat or the vendor-reported label
- [ ] "Ranked #2" not present; accuracy-cost frontier phrasing used instead
- [ ] Fee/BYOK specifics defer to orcarouter.ai/pricing
- [ ] Provider count handled honestly (7 live, 11 documented)
- [ ] Zero-markup claim stated as structural, with the pricing page as the receipt
