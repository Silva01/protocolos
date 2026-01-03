#!/bin/sh

OUTPUT_DIR="melhorias"
mkdir -p "$OUTPUT_DIR"

grep -Rn "//TODO: \[" ./ --include="*.java" \
| while IFS=: read -r file lineNumber line; do
    class=$(basename "$file" .java)

    category=$(echo "$line" | sed -n 's/.*TODO: \[\(.*\)\] -.*/\1/p')
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

  # Cabeçalho do arquivo
  if (!printedFile[file]++) {
    print "## Débitos Técnicos" > file
    print "" >> file
    print "### " class >> file
  }

  # Detecta troca de categoria (ou primeira)
  if (currentCategory != "" && (category != currentCategory || file != currentFile)) {
    print "- [Regra]:" >> currentFile
  }

  # Cabeçalho da nova categoria
  key = file "|" category
  if (!printedCategory[key]++) {
    print "" >> file
    print "#### " category >> file
  }

  # Item
  print item >> file

  currentCategory = category
  currentFile = file
}

END {
  # Fecha última categoria
  if (currentCategory != "") {
    print "- [Regra]:" >> currentFile
  }
}
'

echo "✅ Arquivos de melhorias gerados em ./$OUTPUT_DIR/"
