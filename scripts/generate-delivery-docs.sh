#!/bin/sh

WORK_ITEMS_DIR="work-items"
OUTPUT_DIR="delivery-docs"

PR_FILE="$OUTPUT_DIR/PR.md"
CHANGELOG_FILE="$OUTPUT_DIR/CHANGELOG.md"
DATE=$(date +"%Y-%m-%d")

mkdir -p "$OUTPUT_DIR"

# -------------------------------------------------
# Inicializa arquivos
# -------------------------------------------------
echo "# Pull Requests" > "$PR_FILE"
echo "" >> "$PR_FILE"

echo "## [$DATE]" > "$CHANGELOG_FILE"
echo "" >> "$CHANGELOG_FILE"

# -------------------------------------------------
# Barra de progresso
# -------------------------------------------------
progress_bar() {
  CURRENT=$1
  TOTAL=$2
  WIDTH=30

  PERCENT=$((CURRENT * 100 / TOTAL))
  FILLED=$((CURRENT * WIDTH / TOTAL))
  EMPTY=$((WIDTH - FILLED))

  BAR_FILLED=$(printf "%${FILLED}s" | tr ' ' '█')
  BAR_EMPTY=$(printf "%${EMPTY}s" | tr ' ' '░')

  printf "\r[%s%s] %d%% (%d/%d)" "$BAR_FILLED" "$BAR_EMPTY" "$PERCENT" "$CURRENT" "$TOTAL"
}

# -------------------------------------------------
# Coleta arquivos
# -------------------------------------------------
FILES=$(find "$WORK_ITEMS_DIR" -type f -name "WI-*.md" | sort)
TOTAL_FILES=$(echo "$FILES" | wc -l | tr -d ' ')
COUNT=0

[ "$TOTAL_FILES" -eq 0 ] && echo "Nenhum Work Item encontrado." && exit 0

echo
echo "Gerando PR.md e CHANGELOG.md a partir de $TOTAL_FILES Work Items..."
echo

# -------------------------------------------------
# Processa Work Items
# -------------------------------------------------
for FILE in $FILES; do
  COUNT=$((COUNT + 1))
  progress_bar "$COUNT" "$TOTAL_FILES"

  # ---------------- HEADER ----------------
  HEADER=$(sed -n '1p' "$FILE")

  TYPE=$(echo "$HEADER" | sed 's/# //; s/-.*//')
  TITLE=$(echo "$HEADER" | sed 's/.*– //')

  # ---------------- OBJETIVO --------------
  OBJECTIVE=$(awk '
    /## Objetivo/ {flag=1; next}
    /##/ {flag=0}
    flag && NF {print; exit}
  ' "$FILE")

  # ---------------- PROGRESSO REAL --------
  TOTAL_STEPS=$(grep -c '^- \[[ x]\]' "$FILE")
  DONE_STEPS=$(grep -c '^- \[x\]' "$FILE")

  # Se não tem passos, ignora
  [ "$TOTAL_STEPS" -eq 0 ] && continue

  # Só entra se estiver 100%
  [ "$DONE_STEPS" -ne "$TOTAL_STEPS" ] && continue

  # ---------------- PR --------------------
  cat << EOF >> "$PR_FILE"
## $TYPE — $TITLE

### Objetivo
$OBJECTIVE

---
EOF

  # ---------------- CHANGELOG -------------
  echo "### $TYPE" >> "$CHANGELOG_FILE"
  echo "- $TITLE" >> "$CHANGELOG_FILE"
  echo "" >> "$CHANGELOG_FILE"

  sleep 0.03
done

echo
echo
echo "✔ PR.md e CHANGELOG.md gerados com sucesso em $OUTPUT_DIR/"