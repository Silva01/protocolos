# Protocolo — Shokunin Katagi na Melhoria de Código

## Propósito
Aplicar a mentalidade Shokunin Katagi ao processo de melhoria de código, tratando cada alteração como um ato consciente de artesanato técnico. O objetivo é elevar a qualidade do sistema sem pressa artificial, sem heroísmo e sem improviso.

Este protocolo existe para criar clareza, reduzir ruído e garantir evolução sustentável.

---

## Princípios

- Responsabilidade pessoal sobre o código
- Qualidade antes de velocidade
- Decisões explícitas superam suposições
- Pequenas melhorias constantes são preferíveis a grandes reescritas
- Clareza é um requisito funcional

---

## Quando Aplicar

- Refatorações
- Redução de débitos técnicos
- Melhorias de legibilidade
- Evolução de código legado
- Ajustes em áreas críticas ou instáveis
- Antes de introduzir novas features em fluxos frágeis

---

## Ritual Inicial

Antes de escrever código, responder:

- O que está incorreto ou frágil hoje
- O que ficará melhor ao final
- O que ficará fora do escopo agora

Não atacar tudo é uma decisão técnica legítima.

---

## Foco da Melhoria

Definir o foco principal:

- Legibilidade
- Arquitetura
- Performance
- Segurança
- Testabilidade
- Confiabilidade
- Consistência de domínio

Um foco por vez evita degradação silenciosa.

---

## **O Exercício Diário que Cria Visão (10 minutos)**

Todos os dias, apenas isso:

1. Leia 1 classe
2. Responda:
    - “Se isso crescer, **onde dói primeiro**?”
3. Escreva:

```
Se isso crescer, o problema será ________
```
---

## **⏱ Extração de Bullets Técnicos (Seishin)**

Agora sim, escreva **3 bullets técnicos**, seguindo esta regra:

> Bullet técnico =

> **1 observação estrutural + 1 implicação de design**

### **Formato obrigatório**

```
• [O que é] → [o que isso causa]
```

### **Exemplos**

- • Classe constrói fluxos manualmente → cresce linearmente com novas features

- • Gateway genérico → intenção de leitura/escrita não é explícita

- • Ordem dos métodos importa → regra de negócio está implícita


**Regras:**

- ❌ Não julgar

- ❌ Não sugerir solução

- ✔ Apenas constatar

---

## **⏱ Regra de Design (Kaizen)**

Agora transforme a observação em uma **regra reutilizável**.

Formato obrigatório:

```
Regra: Sempre que ________, então ________.
```

### **Exemplos**

- Regra: Sempre que a ordem importa, o fluxo deve ser modelado explicitamente.

- Regra: Sempre que um tipo esconde intenção, crie uma interface semântica.

- Regra: Sempre que uma classe cresce por fluxo, divida por feature.

---
## Bullets Técnicos

### Código
- Os nomes revelam intenção?
- Existe código que pode ser removido?
- A complexidade diminuiu ou ficou explícita?
- Regras de negócio estão separadas de infraestrutura?

### Estrutura
- Dependências estão claras?
- Alguma abstração surgiu cedo demais?
- Alguma abstração estava atrasada?

### Fluxo
- O fluxo principal é óbvio?
- Casos de erro estão explícitos?
- Estados inválidos são possíveis?

---

## Passos Técnicos

Toda melhoria deve ser decomposta em passos claros:

- Compreender o fluxo atual sem alterar
- Isolar regras centrais
- Reduzir ramificações
- Tornar falhas explícitas
- Ajustar ou criar testes
- Validar impactos

Se não há passos claros, não há entendimento suficiente.

---

## Progresso

Progresso só existe quando é verificável:

- Código compila e executa
- Testes passam
- Cada passo concluído representa estado estável

Código quebrado não representa avanço.

---

## Decisão Técnica

Registrar sempre:

- A abordagem escolhida
- Alternativas descartadas
- Dívidas aceitas conscientemente

Decisão não documentada vira ruído futuro.

---

## Observações

Espaço reservado para:

- Trade-offs assumidos
- Limitações do contexto
- Melhorias futuras intencionais
- Aprendizados técnicos reais

Este campo é do artesão, não do processo.

---

## Critérios de Conclusão

A melhoria pode ser encerrada quando:

- O código está mais simples que antes
- A intenção é clara sem explicação verbal
- Testes refletem o comportamento esperado
- O próximo desenvolvedor entende sem adivinhar

---

## Anti-Padrões

- “Já que estou aqui, vou aproveitar e…”
- Refatorar sem entender o domínio
- Melhorar estilo sem melhorar clareza
- Alterar comportamento sem declarar decisão
- Criar código temporário que vira permanente

---

## Lembrete Final

O artesão não busca reconhecimento imediato.  
Busca consistência, clareza e tranquilidade.

Qualidade não é um evento.  
É um hábito silencioso.