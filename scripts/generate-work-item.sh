#!/bin/sh

BASE_DIR="work-items"
DATE_DIR=$(date +"%d-%m-%Y")
TARGET_DIR="$BASE_DIR/$DATE_DIR"

mkdir -p "$TARGET_DIR"

# -------------------------------------------------
# Descobre próximo número WI-XXX
# -------------------------------------------------
LAST_NUMBER=$(ls "$TARGET_DIR"/WI-*.md 2>/dev/null \
  | sed 's/.*WI-\([0-9][0-9][0-9]\).md/\1/' \
  | sort -n \
  | tail -1)

if [ -z "$LAST_NUMBER" ]; then
  NEXT_NUMBER=1
else
  NEXT_NUMBER=$((10#$LAST_NUMBER + 1))
fi

WI_NUMBER=$(printf "%03d" "$NEXT_NUMBER")
WI_NAME="WI-$WI_NUMBER"
FILE="$TARGET_DIR/$WI_NAME.md"

# -------------------------------------------------
# Função: calcular progresso de um arquivo
# -------------------------------------------------
calc_progress() {
  FILE_PATH="$1"

  TOTAL=$(grep -c '^- \[[ x]\]' "$FILE_PATH")
  DONE=$(grep -c '^- \[x\]' "$FILE_PATH")

  if [ "$TOTAL" -eq 0 ]; then
    PERCENT=0
  else
    PERCENT=$((DONE * 100 / TOTAL))
  fi

  sed -i.bak \
    "s|^\\*\\*Concluído:\\*\\*.*|**Concluído:** $DONE / $TOTAL passos → **$PERCENT%**|" \
    "$FILE_PATH"

  rm -f "$FILE_PATH.bak"
}

# -------------------------------------------------
# Função: barra de progresso
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
# Função: recalcular todos os WI
# -------------------------------------------------
recalculate_all() {
  FILES=$(find "$BASE_DIR" -name "WI-*.md")

  TOTAL_FILES=$(echo "$FILES" | wc -l | tr -d ' ')
  COUNT=0

  if [ "$TOTAL_FILES" -eq 0 ]; then
    echo "Nenhum Work Item encontrado."
    return
  fi

  echo
  echo "Recalculando progresso de $TOTAL_FILES Work Items..."
  echo

  for f in $FILES; do
    calc_progress "$f"
    COUNT=$((COUNT + 1))
    progress_bar "$COUNT" "$TOTAL_FILES"
    sleep 0.05
  done

  echo
  echo
  echo "✔ Progresso recalculado com sucesso."
}

# -------------------------------------------------
# Menu
# -------------------------------------------------
clear
echo "====================================="
echo "  Gerador de Work Items"
echo "====================================="
echo
echo "Data: $DATE_DIR"
echo
echo "Escolha a opção:"
echo "1) Criar Feature"
echo "2) Criar Bug"
echo "3) Recalcular progresso (todos)"
echo "0) Cancelar"
echo
printf "Opção: "
read OPTION

case "$OPTION" in
  1)
    cat << EOF > "$FILE"
# FEAT-$WI_NAME – Título da Feature

## Tipo
Feature

## Objetivo
Explique claramente o que a feature resolve.

## Métrica de sucesso
- Métrica funcional ou técnica

---

## Progresso
**Concluído:** 0 / 0 passos → **0%**

---

## Passos técnicos
- [ ] Descrever passo técnico claro
- [ ] Cada passo gera código real

---

## Observações
(Trade-offs, riscos, decisões técnicas)
EOF

    calc_progress "$FILE"

    echo
    echo "✔ Feature criada:"
    echo "  $FILE"
    ;;

  2)
    cat << EOF > "$FILE"
# BUG-$WI_NAME – Título do Bug

## Tipo
Bug

## Objetivo
Descrever o problema a ser corrigido.

## Métrica de sucesso
- Bug não ocorre mais

---

## Progresso
**Concluído:** 0 / 0 passos → **0%**

---

## Passos técnicos
- [ ] Reproduzir o bug
- [ ] Corrigir
- [ ] Criar testes

---

## Observações
(Efeitos colaterais, riscos)
EOF

    calc_progress "$FILE"

    echo
    echo "✔ Bug criado:"
    echo "  $FILE"
    ;;

  3)
    recalculate_all
    ;;

  0)
    echo "Operação cancelada."
    exit 0
    ;;

  *)
    echo "❌ Opção inválida."
    exit 1
    ;;
esac