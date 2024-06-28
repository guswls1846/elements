#!/bin/bash
example=$1

cd ./examples-dev/$example

npx json -I -f package.json -e "this.resolutions={
\"@guswls1846/elements\": \"file:../../packages/elements/dist\",
\"@guswls1846/elements-dev-portal\": \"file:../../packages/elements-dev-portal/dist\",
\"@guswls1846/elements-core\": \"file:../../packages/elements-core/dist\"
}"

npx json -I -f package.json -e "this.dependencies[\"@guswls1846/elements\"]=\"file:../../packages/elements/dist\""
npx json -I -f package.json -e "this.dependencies[\"@guswls1846/elements-dev-portal\"]=\"file:../../packages/elements-dev-portal/dist\""

npx json -I -f package.json -e "this.scripts.reinstall=\"rm -rf node_modules && yarn install\""
