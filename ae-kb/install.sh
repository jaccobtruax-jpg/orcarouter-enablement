#!/usr/bin/env bash
# OrcaRouter AE KB installer
# Copies the six KB skills into the local Hermes skills directory.
# Usage: bash -c "$(curl -fsSL https://raw.githubusercontent.com/jaccobtruax-jpg/orca-ae-kb/main/install.sh)"
set -euo pipefail

REPO="https://raw.githubusercontent.com/jaccobtruax-jpg/orca-ae-kb/main"
DEST="${HOME}/.hermes/skills/business"

SKILLS=(orca-product-kb orca-pricing-kb orca-competitive-kb orca-sales-playbook-kb orca-brand-voice-kb orca-market-signals-kb)

echo "Installing OrcaRouter AE knowledge base -> ${DEST}"
mkdir -p "${DEST}"
for s in "${SKILLS[@]}"; do
  mkdir -p "${DEST}/${s}"
  curl -fsSL "${REPO}/skills/business/${s}/SKILL.md" -o "${DEST}/${s}/SKILL.md"
  echo "  installed ${s}"
done
echo "Done. The skills load on the next Hermes session (session cache is built at startup)."
