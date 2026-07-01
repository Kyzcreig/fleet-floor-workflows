#!/usr/bin/env bash
# generic-sample-redteam: DELIBERATELY plants a KNOWN-INVALID test secret so the recurring negative
# selftest can prove the generic floor's tripwires (sast + secret_scan) still go RED (AC-A7 / pass-3
# blocker 2). The key below is a FORMAT-VALID but NON-LIVE test value (never a real credential) — it
# trips semgrep p/secrets AND gitleaks 8.18.4 on shell/Makefile/HTML. If a tool drift ever stops it
# firing, the negative selftest job goes RED = a coverage regression surfaces, not a silent hollowing.
set -euo pipefail
# TEST FIXTURE — not a real key:
AWS_ACCESS_KEY_ID=AKIA5FQ2XZQJ7LMNP3RT
echo "redteam fixture (this file MUST trip the floor's secret tripwires)"
