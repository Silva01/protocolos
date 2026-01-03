#!/bin/sh

OUTPUT_DIR="protocolos"
FILE_NAME="cartao-leitura-padroes.md"

mkdir -p "$OUTPUT_DIR"

cat << 'EOF' > "$OUTPUT_DIR/$FILE_NAME"
# 🧠 Cartão Leitura de Padrões

> **Objetivo:**  
> Ler sistemas com clareza, identificar padrões recorrentes e gerar aprendizado rápido sem envolvimento emocional.

---

## [SITUAÇÃO]
Descreva o que aconteceu em **uma frase objetiva**, sem adjetivos, julgamentos ou explicações.

---

## [O QUE SE REPETIU]
Registre **apenas fatos observáveis** que ocorreram mais de uma vez no mesmo contexto.

---

## [VARIÁVEIS-CHAVE]
Liste **1 a 3 variáveis** que mais influenciam a situação observada.

- Variável 1  
- Variável 2  
- Variável 3  

---

## [HIPÓTESE ATUAL]
Formule uma hipótese **leve e descartável**, usando o formato:

> *"Quando ___, tende a ___."*

Evite afirmações absolutas.

---

## [PRÓXIMO TESTE]
Defina o **menor experimento possível** para validar ou refutar a hipótese.

---

> **Regra:**  
> • 1 cartão por situação  
> • Máx. 5 minutos  
> • Sem narrativa, sem ego  
> • Erro = dado

EOF

echo "Template Markdown gerado em: $OUTPUT_DIR/$FILE_NAME"
