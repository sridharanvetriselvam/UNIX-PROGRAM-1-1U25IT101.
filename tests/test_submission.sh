#!/bin/bash

# ============================================

# CentOS VirtualBox Practical

# Automatic Submission Checker

# ============================================

echo "============================================"
echo " CentOS VirtualBox Practical Evaluation"
echo "============================================"

MARKS=0
MAX_MARKS=100

# --------------------------------------------

# 1. Check Installation Report

# --------------------------------------------

echo ""
echo "[1/6] Checking Installation Report..."

if [ -f "Installation_Report.md" ]; then
echo "PASS: Installation_Report.md found"
MARKS=$((MARKS + 15))
else
echo "FAIL: Installation_Report.md missing"
fi

# --------------------------------------------

# 2. Check Commands File

# --------------------------------------------

echo ""
echo "[2/6] Checking commands.txt..."

if [ -f "commands.txt" ]; then
echo "PASS: commands.txt found"
MARKS=$((MARKS + 20))
else
echo "FAIL: commands.txt missing"
fi

# --------------------------------------------

# 3. Check Required Linux Commands

# --------------------------------------------

echo ""
echo "[3/6] Checking Linux commands..."

COMMANDS=(
"hostname"
"cat /etc/os-release"
"uname -r"
"free -h"
"df -h"
"whoami"
"date"
)

COMMAND_MARKS=0

if [ -f "commands.txt" ]; then

```
for COMMAND in "${COMMANDS[@]}"
do
    if grep -Fq "$COMMAND" commands.txt; then
        echo "PASS: $COMMAND"
        COMMAND_MARKS=$((COMMAND_MARKS + 3))
    else
        echo "FAIL: $COMMAND"
    fi
done
```

fi

MARKS=$((MARKS + COMMAND_MARKS))

# --------------------------------------------

# 4. Check CentOS Information

# --------------------------------------------

echo ""
echo "[4/6] Checking CentOS information..."

if grep -qi "centos" commands.txt 2>/dev/null; then
echo "PASS: CentOS information found"
MARKS=$((MARKS + 10))
else
echo "WARNING: CentOS information not detected"
fi

# --------------------------------------------

# 5. Check VirtualBox Documentation

# --------------------------------------------

echo ""
echo "[5/6] Checking VirtualBox documentation..."

if grep -qi "virtualbox" Installation_Report.md 2>/dev/null; then
echo "PASS: VirtualBox information found"
MARKS=$((MARKS + 10))
else
echo "WARNING: VirtualBox information missing"
fi

# --------------------------------------------

# 6. Check Screenshots Folder

# --------------------------------------------

echo ""
echo "[6/6] Checking screenshots..."

if [ -d "screenshots" ]; then

```
SCREENSHOT_COUNT=$(find screenshots -type f \
    \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) \
    | wc -l)

echo "Screenshots found: $SCREENSHOT_COUNT"

if [ "$SCREENSHOT_COUNT" -ge 6 ]; then
    echo "PASS: Required screenshots found"
    MARKS=$((MARKS + 15))
elif [ "$SCREENSHOT_COUNT" -gt 0 ]; then
    echo "WARNING: Some screenshots are missing"
    MARKS=$((MARKS + 5))
else
    echo "FAIL: No screenshots found"
fi
```

else
echo "FAIL: screenshots directory missing"
fi

# --------------------------------------------

# Final Result

# --------------------------------------------

echo ""
echo "============================================"
echo " FINAL EVALUATION"
echo "============================================"

echo "Marks: $MARKS / $MAX_MARKS"

if [ "$MARKS" -ge 80 ]; then
echo "Result: EXCELLENT"
elif [ "$MARKS" -ge 60 ]; then
echo "Result: GOOD"
elif [ "$MARKS" -ge 40 ]; then
echo "Result: NEEDS IMPROVEMENT"
else
echo "Result: INCOMPLETE"
fi

echo "============================================"

exit 0
