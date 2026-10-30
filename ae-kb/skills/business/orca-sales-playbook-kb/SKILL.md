---
name: orca-sales-playbook-kb
description: 'Use when running any OrcaRouter sales motion: discovery calls, pitches, objections, follow-up sequences, ICP targeting, urgency signals, or the 20-account enterprise playbook. Encodes the three pillars, four pitches, the 15-minute discovery script, the close, the day-0/3/7/14 follow-up motion, objection responses, and who to chase (and not chase).'
version: 1.0.0
author: OrcaRouter Sales Enablement
license: internal
metadata:
  hermes:
    tags: [orcarouter, sales, playbook, discovery, objections, icp, knowledge-base]
    related_skills: [orca-product-kb, orca-pricing-kb, orca-competitive-kb, orca-brand-voice-kb, orca-market-signals-kb]
---

# OrcaRouter sales playbook (AE KB)

## Overview

The sales motion is built on three pillars and four pitches. You pick ONE pitch per buyer; you never demo all three pillars on one call. Seller identity: "I'm with FlashLabs" (OrcaRouter is one product of a four-product GTM stack alongside FlashRev, FlashAI, and FlashClick; cross-sell exists in both directions).

## When to use

- Preparing for or running a discovery call
- Choosing the pitch for a specific buyer persona
- Handling an objection, live or in writing
- Sequencing follow-up touches
- Qualifying a prospect against the ICP and urgency signals

## The three pillars

- **Reliability**: fallback chains, mid-stream failover. Who cares: anyone with customer-facing AI. "Your engineers stop getting paged at 2am."
- **Security**: PII Shield, Tool-Call Firewall, compliance recipes (SOC2/HIPAA). Who cares: enterprise, fintech, healthcare. "All they need is a leaked email and password."
- **Cost**: auto-route simple traffic to cheap models, zero markup. Who cares: high-volume API consumers with >$10K/mo AI spend. "Same quality, 40% less spend."

## The four pitches (pick ONE per buyer)

1. **Security First** (closes the most deals): "If your AI bot gets hacked, whoever hacks it gets access to everything you've given that bot access to: passwords, client data, business information." Close: "We put a security layer between your AI and the world. You keep using the models you already use; we add the safety net." Healthcare: "We make AI HIPAA-compliant at the gateway level."
2. **Cost Savings** (easiest to prove): "Same quality, 40% less spend." Buyer: >$10K/mo AI spend, FinOps-minded.
3. **Reliability** (engineering-sympathetic): "If the frontier is down, you're still up." Your engineers stop getting paged at 2am.
4. **Anti-Lock-In** (CFO/CTO favorite): "We're the escape hatch." Open core, BYOK, zero markup, no proprietary chain.

## The 30-second pitch (memorized)

"OrcaRouter is an AI gateway: one API endpoint that connects to 200+ models, handles failover when models go down, saves 30-50% on AI costs, and screens every prompt for security. Zero markup on model costs. One line of code. Companies spending $10K+/month on AI save thousands immediately."

## Discovery call (15 minutes)

- 0-2 min: open with the signal that got you in the door (their outage post, their job req, their spend).
- 2-5 min: diagnostic. Three questions, pick what fits: What happens when your model provider degrades (failover)? Where does PII/PHI/secrets flow through your AI stack? What is your monthly inference spend?
- 5-10 min: show ONE pillar. Do not demo all three.
- 10-13 min: close.
- 13-15 min: next step.

## The close

"We typically do a 90-day POC, monthly payments. If it doesn't deliver by day 90, you walk." POC rules: never refund or discount during POC; speed kills doubt. The pilot structure inside the POC is the 30-day staged motion (week 1 replay, weeks 2-3 shadow, week 4 canary, then the committed minimum; see `orca-pricing-kb`).

## Follow-up motion

- **Day 0**: one-page PDF (the pillar, an architecture diagram, one case study, a calendar link, and a P.S. pointing at the trigger artifact that started the conversation).
- **Day 3**: LinkedIn connect.
- **Day 7**: a new insight, not a nudge. Something they didn't already know about their own problem.
- **Day 14**: breakup email. Reopen the door, stop the ghosting gracefully.

## Objections and answers

| Objection | Answer |
|---|---|
| "We're happy with OpenAI" | "It's insurance, and insurance that pays for itself." |
| "We'll build this in-house" | "Most teams spend 3-6 months building multi-model routing, streaming failover, and stream-safe guardrails." |
| "Security team won't approve a proxy" | "We deploy in your VPC. Data never leaves your perimeter. We're the firewall, not a man-in-the-middle." |
| "We built failover internally" | "What about partial failures where the model returns garbage instead of errors?" |
| "We use OpenRouter" | "OpenRouter routes. OrcaRouter governs. Zero markup either way, but only OrcaRouter ships agent firewall, PII Shield, PCI/HIPAA compliance packs, and zero data retention." |
| "How do you make money with zero markup?" | "OpenRouter makes money when you spend more. We don't." |
| "Can you do better on price?" | "Our fee is $0.00 on every plan. The question is which plan features you need." (You do not discount $0.) |
| "We're not ready to move" | The replay pilot: "We don't ask you to take 40% on faith. Read-only replay on your own logs; measured deltas are yours. Miss the threshold and you walk, keeping the measurement." |

## ICP and urgency signals

ICP: VP Eng, CTO, Head of AI/ML at companies that spend $100K+/month on AI inference, use multiple LLM providers, have uptime/reliability concerns, and need security guardrails.

The five urgency signals (look for these in research; they are the reason to call NOW):

1. **Burned by an outage**: X/Twitter "OpenAI down" + "our product", HN postmortems, status pages. When a provider degrades, their product degrades; we prevent that.
2. **Hiring AI infra roles**: job descriptions with "experience with multiple LLM providers" or "build internal AI platform/tooling" are buy signals. Too late to call: "5+ years building AI gateways" (they are building it).
3. **Visible/material AI spend**: earnings calls; AI as a core feature implies $50K-$500K+/mo critical spend; copilots imply $10K-$100K; internal tooling $1K-$10K. The bigger the spend, the faster the payback.
4. **Deploying agents with tool use**: "One prompt injection -> data exfiltration -> legal liability."
5. **Regulated industry + AI**: HIPAA BAA, PCI DSS, FedRAMP requirements make the compliance packs the wedge.

Signal-to-response triggers: "Claude enterprise customer" (Replit, Cursor, Notion, Box) -> "When Claude degrades, your product degrades. We prevent that." "Hiring agent infra engineers" -> "Your job post describes the problem we solve."

Quick-scan checklist per week: 8-14 calls this week, 5-7 nurture, 0-4 quarterly.

**Don't chase**: pre-revenue startups, OpenAI-only shops by policy, companies that already built their own gateway, teams under 5 engineers, academic labs.

Pricing anchor when the alternative is in-house: 3-6 months of engineering time (see `orca-pricing-kb` for which figures are safe to quote).

## The 20-account enterprise playbook (verified July 2026)

Clusters: AI code platforms (Sourcegraph, Replit, Cursor, Codeium); enterprise SaaS AI (Notion, Intercom, GitLab, Box, Figma); regulated (Benchling, Plaid); infra & platform (HashiCorp, Grafana, Temporal, Databricks, Confluent, LaunchDarkly, Sentry, Cockroach; Twilio Segment in hub).

- Week 1 hot: Replit (call-then-email; "Agent 4 uses Claude Sonnet 4.5 exclusively"; 9 AI/ML roles open), Sourcegraph (tool-call firewall for Cody; $59/seat SOC2), Intercom (PII in support tickets; $0.99/resolution), Box (HIPAA + PII Shield + Claude fallback).
- Week 2: Cursor, Notion (June 7 incident: "Opus 4.7 degraded. Notion manually disabled ALL Claude models"), GitLab (secrets in code prompts), Databricks (Mosaic AI Gateway scale), Codeium (millions of calls/day), HashiCorp ("terraform apply is a tool call that can destroy infra").
- Week 3: Benchling, Plaid, Temporal, Grafana (PII in logs), Confluent, LaunchDarkly, Sentry (PII in error traces), Figma.
- Week 4: Twilio Segment (parent too large), Cockroach Labs.

Entry wedges live per account (Replit = runaway compute, Notion = Claude outage/brand safety, GitLab = secrets in prompts, HashiCorp = tool-call governance). NOTE: playbook.html marks Cursor/Notion HOT; the hub marks them Warm. The hub ordering (1-20) is the operational priority list.

## Intent signals beyond the 20

DoorDash (Sr. ML Infra Engineer req, cost angle, score 5); Anduril (Agent Platform SWE, security); Capstone Investment Advisors (AI Infra, compliance); Sierra AI ($950M raise at $15B+, Bret Taylor, Ghostwriter, reliability, score 5); Anthropic enterprise customers (continued outages June-July 2026; users keeping Grok/Gemini as backup, score 5); Hex Technologies (agent context); Instead (tax AI, IRS approval).

## Broker Expo NYC 2026

Sept 15-16, Center 415, NYC. Sponsor outreach tracker exists (dual-track FlashRev + OrcaRouter) but is empty: 0 targets. Unexecuted event play; whoever owns the event track needs to fill it.

## Rep-level stats (the receipts; know them)

63.6% AE-sourced win rate vs 5.8% SDR-sourced (11x); $4,800 median deal; 37 median days to close. LinkedIn: connection acceptance 28.5%, note reply 3%, DM reply 10.4%. The security-angle DM is the highest-converting: "If someone got access to your AI bot's API key tomorrow, what data would they walk away with?" Hard rules: max 10 connection requests/day, no automation tools, no pitching in connection requests.

## Common pitfalls

1. Demo all three pillars on one call. Pick one.
2. Selling the commit as a fee. It is a floor on spend (`orca-pricing-kb`).
3. Chasing companies that already built their own gateway or run OpenAI-only by policy.
4. Nudging on day 7 instead of bringing a new insight.
5. Quoting vendor-reported numbers without the label (`orca-product-kb` claim hygiene rules).
6. Forgetting the identity: FlashLabs, not just OrcaRouter. The four-product stack is the up-sell.

## Verification checklist

- [ ] ONE pillar chosen per buyer before the call
- [ ] Discovery script followed (signal -> diagnostic -> one demo -> close -> next step)
- [ ] Commit described as a floor, not a fee
- [ ] Objection responses claim-hygiene-clean
- [ ] Follow-up touches sequenced on the day-0/3/7/14 rhythm
- [ ] Prospect matched against ICP + urgency signals before outreach
