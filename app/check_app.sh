#!/usr/bin/env bash

# COLORS
GREEN='\e[32m'
RED='\e[31m'
NC='\e[0m'

CODE_OUTPUT=0

check() {
    echo -n "index.html file exist: "
    if [ -f "./index.html" ]; then
        echo -e "${GREEN}PASS${NC}"
    else
        echo -e "${RED}FAULT${NC}"
        CODE_OUTPUT=1
    fi
}

echo "-------------------"
echo "Start verifications"
echo "-------------------"
echo ""
check
echo ""
echo "-----------------"
echo "End verifications"
echo "-----------------"
exit $CODE_OUTPUT

