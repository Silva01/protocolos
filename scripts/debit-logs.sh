#!/bin/sh

INPUT_FILE="TODO.md"
OUTPUT_DIR="design-docs"

PR_FILE="$OUTPUT_DIR/PR.md"
CHANGE_FILE="$OUTPUT_DIR/CHANGELIST.md"

mkdir -p "$OUTPUT_DIR"

echo "## Changelist" > "$CHANGE_FILE"
echo "" >> "$CHANGE_FILE"

echo "## Pull Request Description" > "$PR_FILE"
echo "" >> "$PR_FILE"
echo "### Débitos Técnicos Endereçados" >> "$PR_FILE"
echo "" >> "$PR_FILE"

awk '
BEGIN {
  currentCategory=""
}

# Captura categoria
/^#### / {
  currentCategory = substr($0, 6)
}

# Processa apenas itens marcados como feitos
/^- \[x\]/ {
  item=$0
  getline rule

  # Limpeza do texto
  gsub(/^- \[x\] /, "- ", item)
  gsub(/ *\([0-9]+\)$/, "", item)

  # -------- CHANGELOG --------
  if (!printedChange[currentCategory]++) {
    print "#### " currentCategory > "'"$CHANGE_FILE"'"
    print "" > "'"$CHANGE_FILE"'"
  }
  print item > "'"$CHANGE_FILE"'"
  print "" > "'"$CHANGE_FILE"'"

  # -------- PR --------
  if (!printedPR[currentCategory]++) {
    print "#### " currentCategory > "'"$PR_FILE"'"
    print "" > "'"$PR_FILE"'"
  }
  print item > "'"$PR_FILE"'"
  print rule > "'"$PR_FILE"'"
  print "" > "'"$PR_FILE"'"
}
' "$INPUT_FILE"

# Impacto arquitetural padrão
cat << EOF >> "$PR_FILE"
### Impacto Arquitetural
- Redução de acoplamento estrutural
- Contratos explícitos e seguros
- Melhor testabilidade
- Evolução arquitetural incremental
EOF

echo "✅ PR.md e CHANGELIST.md gerados em $OUTPUT_DIR/"