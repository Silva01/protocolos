# 📌 PROTOCOLO — Escrita de Bullets Técnicos (Sinais Arquiteturais)

> **Propósito:** padronizar a escrita de *bullets técnicos* como registros objetivos de sinais arquiteturais, sem antecipar regras, julgamentos ou soluções.

---

## 🧠 Princípio Base

> **Bullets técnicos registram o que está acontecendo no código.**  
> **Regras arquiteturais interpretam o que isso tende a causar ao longo do tempo.**

Separar essas duas coisas é obrigatório.

---

## 🎯 Papel do Bullet Técnico

Um bullet técnico serve para:
- Tornar **visível** um sinal estrutural
- Congelar uma observação antes de qualquer decisão
- Permitir leitura comparativa ao longo do tempo

❌ Ele **não serve** para:
- Julgar se algo está certo ou errado
- Apontar violação de princípio
- Antecipar impacto futuro
- Sugerir refatoração

---

## 🧩 FASE ÚNICA — REGISTRO DO SINAL

> **Entrada:** leitura de código consciente  
> **Saída:** 1 a 3 bullets técnicos por classe/módulo

---

## ✍️ Forma Oficial do Bullet Técnico

### Estrutura recomendada

````text

<estrutura observável> + <contexto técnico>

Onde:
- **estrutura observável** = algo que qualquer pessoa pode confirmar no código
- **contexto técnico** = onde ou como isso ocorre

---

## ✅ Exemplos de Bullets Bem Escritos

- UseCase declara explicitamente o conjunto de validators via anotação
- Validações do fluxo são definidas fora do corpo do UseCase
- Reflection é utilizada para executar validações em tempo de execução
- Casts explícitos são necessários para obter tipos esperados
- Dependências concretas são instanciadas diretamente no construtor
- Fluxo de decisão é controlado por metadados externos à classe

Todos os exemplos acima:
- são verificáveis
- não contêm julgamento
- não antecipam impacto

---

## ❌ Exemplos de Bullets Inválidos (adiantados demais)

- Validação por anotação gera forte acoplamento ❌
- Uso de reflection é decisão arquitetural errada ❌
- Cast explícito viola o contrato ❌
- UseCase não segue SOLID ❌

➡️ Esses já são **interpretações**. Devem virar **regras**, não bullets.

---

## 🧪 Checklist de Validação do Bullet

Antes de aceitar um bullet técnico, responda:

- Consigo confirmar isso apenas lendo o código?
- Outra pessoa poderia discordar olhando o mesmo trecho?
- O bullet menciona impacto, princípio ou consequência?

### Resultado
- Se **todas as respostas forem objetivas** → bullet válido ✅
- Se houver julgamento ou previsão → reescrever ❌

---

## 🏷️ Classificação Opcional (não obrigatória)

Se ajudar na organização, um bullet pode ser classificado por **categoria de sinal**:

- INTENÇÃO — quando o comportamento não está claro
- ACOPLAMENTO — quando dependências são fixadas estruturalmente
- CRESCIMENTO — quando novas features exigem alterações repetidas
- CONTRATO — quando tipos ou expectativas não são garantidos
- FLUXO — quando o caminho de execução não é explícito

⚠️ A categoria **não muda o texto do bullet** — apenas o agrupa.

---

## 🔗 Relação com a Regra Arquitetural

| Elemento | Pergunta que responde |
|--------|----------------------|
| Bullet técnico | O que está acontecendo no código? |
| Regra arquitetural | O que isso indica e tende a causar? |

Um bullet pode existir **sem** virar regra.  
Uma regra **nunca** nasce sem bullets prévios.

---

## 🧠 Heurísticas Mentais (lembrete rápido)

| Evitar no Bullet | Preferir |
|----------------|----------|
| gera | é utilizado |
| viola | está definido |
| errado | explícito |
| dificulta | exige |
| princípio | estrutura |

---

## 🏁 Critério de Sucesso

Você saberá que o protocolo está funcionando quando:
- os bullets parecerem “sem graça”
- você sentir vontade de explicar, mas não explicar
- as regras ficarem mais curtas e mais verdadeiras
- a leitura do código ficar mais calma

---

## 🧠 Frase-Âncora

> **Bullet técnico não ensina.**  
> **Ele apenas aponta.**

````
