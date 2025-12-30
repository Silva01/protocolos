# **📐 TEMPLATE — Protocolo de Treino de Regras Arquiteturais**

> **Uso:** copie este template para cada ciclo de análise (classe, módulo ou PR) e preencha os campos conforme avança pelas fases.

---

## **🧠 Visão Geral**

**Objetivo do Ciclo:** <descrever brevemente o que será analisado>  

**Escopo:** <classe | módulo | PR | feature>  

**Data:** <dd/mm/aaaa>  

**Autor:** 

---

## **📍 Princípio Base**

> **Arquitetura trabalha com sinais e impactos, não com ordens e soluções.**

Toda regra nasce de um **sinal observado**, não de uma **ação desejada**.

---

## **🧩 FASE 1 — OBSERVAÇÃO (Leitura consciente)**

**Tempo sugerido:** 5–10 minutos

### **Checklist mental (não escrever soluções):**

- Onde esse código cresce quando adiciono uma feature?
  
- Onde o nome não bate com o comportamento?
  
- Onde a estrutura se repete?
  
- O que esse código está tentando esconder?
  
- Onde a mudança custa mais do que deveria?
  

**Notas rápidas (opcional):**

```
<observações factuais, sem julgamento>
```

⚠️ **Regra da fase:** não pensar em solução.

---

## **🧩 FASE 2 — REGISTRO DO SINAL (TODO técnico)**

### **Padrão obrigatório de TODO**

- Sem verbo de ação
  
- Sem solução
  
- Apenas observação + sinal
  

```
// TODO[CATEGORIA]: <sinal arquitetural observado>
```

### **Exemplos**

```
// TODO[CRESCIMENTO]: Nova feature exige novo método na mesma classe
// TODO[INTENCAO]: Classe atua como dispatcher, mas está nomeada como Service
// TODO[DUPLICIDADE]: Métodos compartilham a mesma estrutura de execução
```

❌ **Proibido nesta fase:** extrair, refatorar, criar, mudar.

---

## **🧩 FASE 3 — CONSOLIDAÇÃO (Markdown)**

**Ferramenta:** script automático  

**Saída esperada:** lista de bullets técnicos

### **Leitura de padrões**

- O sinal aparece mais de uma vez?
  
- O sinal aparece em mais de uma classe/módulo?
  
- O sinal é recorrente ao longo do tempo?
  

**Resumo dos padrões observados:**

```
<padrões recorrentes, sem decisões>
```

---

## **🧩 FASE 4 — MATURAÇÃO (Tempo)**

> ❌ **Nunca escrever a regra no mesmo dia do bullet**

**Intervalo aplicado:** <1 dia | 2 dias | após outra análise>

**Objetivo:** reduzir viés emocional, ganhar neutralidade e melhorar linguagem.

---

## **🧩 FASE 5 — ESCRITA DA REGRA (Arquitetural)**

### **Template oficial de Regra**

```
[Regra]
Quando <condição observável>,
isso indica <sinal arquitetural>,
e tende a <impacto estrutural ao longo do tempo>.
```

### **Regra proposta (preencher):**

```
[Regra]
Quando <...>,
isso indica <...>,
e tende a <...>.
```

---

## **🧩 FASE 6 — VALIDAÇÃO DA REGRA**

Marque apenas quando verdadeiro:

- A regra descreve um **sinal**, não uma solução
  
- Ela vale fora deste caso específico
  
- Ela admite exceções implícitas
  
- Ela ajuda a pensar melhor (não a obedecer)
  
- Ela ainda faria sentido daqui a 1 ano
  

**Status da Regra:**  \

- Verde (precisa amadurecer)  \
  
- Amarela (válida com ressalvas)  \
  
- Verde-madura (reutilizável)
  

---

## **🧠 Heurísticas Mentais (lembrete rápido)**

| **Evitar** | **Preferir** |
| --- | --- |
| deve | indica |
| precisa | sinaliza |
| sempre | tende a |
| errado | arriscado |
| corrigir | avaliar |

---

## **⏱️ Ritmo do Ciclo**

- 1 classe → 1 a 3 bullets
  
- 1 regra → somente após 2+ ocorrências
  
- Regra boa é curta e deliberadamente “incompleta”
  

---

## **🏁 Critério de Sucesso**

Você saberá que o ciclo funcionou quando:

- regras prescritivas começarem a incomodar
  
- você escrever menos e pensar mais
  
- identificar problemas sem urgência de resolver
  
- regras parecerem “chatas, mas verdadeiras”
  

---

## **🧠 Frase-Âncora**

> **Arquitetura não é decidir o que fazer.**  

> **É perceber o que está acontecendo antes que vire problema.**
