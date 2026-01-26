#!/bin/bash

# 1. dev 브랜치 Pull
echo "Updating dev branch..."
git checkout dev
git pull origin dev

# 2. NiFi Process Group ID / dev URL /
NIFI_PG_ID="d4f982c8-019b-1000-1552-51aad59345a2"
NIFI_URL="http://172.28.1.107:8787/nifi-api"

# 3. NiFi Update Version 요청
echo "Triggering NiFi Update Version..."
curl -X POST "${NIFI_URL}/versions/process-groups/${NIFI_PG_ID}/update-requests" \
     -H 'Content-Type: application/json' \
     -d '{}'

echo "NiFi dev Process Group update requested."
