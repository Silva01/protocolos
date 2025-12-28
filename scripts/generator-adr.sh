#!/bin/sh

INPUT_FILE="TODO.md"
OUTPUT_DIR="design-docs"

mkdir -p "$OUTPUT_DIR"

awk '
/^- \[x\]/ {
  problem = $0
  getline rule

  # Limpa o texto do problema
  gsub(/^- \[x\] /, "", problem)
  gsub(/ *\([0-9]+\)$/, "", problem)

  # Limpa completamente a regra
  gsub(/^.*\[Regra\]:[ ]*/, "", rule)
  gsub(/^[ \t-]*/, "", rule)

  adr_id = sprintf("ADR-%03d", ++count)
  file = "'"$OUTPUT_DIR"'/" adr_id ".md"

  print "# Architectural Decision Record" > file
  print "" >> file
  print "## " adr_id " — " problem >> file
  print "" >> file
  print "### Status" >> file
  print "Accepted" >> file
  print "" >> file
  print "### Context" >> file
  print problem "." >> file
  print "" >> file
  print "### Decision" >> file
  print rule >> file
  print "" >> file
  print "### Consequences" >> file
  print "- Redução de complexidade estrutural" >> file
  print "- Melhoria de legibilidade e manutenção" >> file
  print "- Arquitetura mais explícita e extensível" >> file
}
' "$INPUT_FILE"

echo "✅ ADRs gerados em $OUTPUT_DIR/"