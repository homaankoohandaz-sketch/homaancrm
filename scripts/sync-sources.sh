#!/usr/bin/env bash
set -euo pipefail

mkdir -p vendor

sync_repo() {
  local name="$1"
  local url="$2"
  if [ -d "vendor/$name/.git" ]; then
    git -C "vendor/$name" fetch --depth=1 origin
    git -C "vendor/$name" reset --hard origin/HEAD || true
  else
    git clone --depth=1 "$url" "vendor/$name"
  fi
}

sync_repo marketingskills https://github.com/sanandnarayan/marketingskills.git
sync_repo ai-marketing-skills https://github.com/superamped/ai-marketing-skills.git
sync_repo marketing-os https://github.com/scayver/marketing-skills.git
sync_repo webagents https://github.com/robutlerai/webagents.git
sync_repo openmontage https://github.com/aliberson/openmontage.git

echo "Sources synced. Review licenses before copying substantial code into production."
