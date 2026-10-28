#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_pipeline_submit info
PYTHONPATH=src python -m gbt_pipeline_submit check --payload '{}'
PYTHONPATH=src python -m gbt_pipeline_submit run   --payload '{}'
