#!/bin/sh

OUTPUT_DIR="melhorias"
mkdir -p "$OUTPUT_DIR"

# Limpa arquivos antigos
# rm -f "$OUTPUT_DIR"/*.md

grep -Rn "//TODO: \[" ./ --include="*.java" \
| while IFS=: read -r file lineNumber line; do
    class=$(basename "$file" .java)

    if [ -f "$OUTPUT_DIR/$class.md" ]; then
      continue
    fi

    # Extrai categoria entre []
    category=$(echo "$line" | sed -n 's/.*TODO: \[\(.*\)\] -.*/\1/p')

    # Extrai texto após - []
    todo=$(echo "$line" | sed 's/.*- \[\] /- [ ] /')

    echo "$class|$category|$todo ($lineNumber)"
done \
| sort \
| awk -F'|' -v out="$OUTPUT_DIR" '
 {
   file = out "/" $1 ".md"
   class = $1
   category = $2
   item = $3

   # Cabeçalho do arquivo (uma vez por classe)
   if (!printedFile[file]++) {
     print "## Débitos Técnicos" > file
     print "" >> file
     print "### " class >> file
   }

   # Cabeçalho da categoria (uma vez por classe + categoria)
   key = file "|" category
   if (!printedCategory[key]++) {
     print "" >> file
     print "#### " category >> file
   }

   # Item (SEM linha em branco extra)
   print item >> file
   print "    - [Regra]:" >> file
 }
 '

echo "✅ Arquivos de melhorias gerados em ./$OUTPUT_DIR/"