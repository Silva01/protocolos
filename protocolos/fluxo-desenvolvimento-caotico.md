# 📘 Protocolos de Desenvolvimento

Este documento define os **protocolos mínimos** para iniciar, executar e encerrar uma demanda de forma consistente, com clareza técnica e estimativas mais confiáveis.

Aplica-se a:
- 🐞 Correção de bugs
- ✨ Desenvolvimento de novas features
- ♻️ Melhorias técnicas

---

## 1️⃣ Protocolo de Abertura de Demanda

**Objetivo:** Garantir entendimento real antes de codar.

### Perguntas obrigatórias
Responder antes de qualquer implementação:

- O que **muda** para o usuário quando isso estiver pronto?
- O que **não muda**?
- Qual é o resultado esperado ao final?

### Classificação
- [ ] Bug
- [ ] Feature
- [ ] Melhoria técnica

---

## 2️⃣ Protocolo de Análise Inicial

### 🐞 Para Bugs
- Qual é o **sintoma**?
- Qual é o **impacto real**?
- O problema é:
    - [ ] Erro funcional
    - [ ] Regra mal definida
    - [ ] Expectativa incorreta

### ✨ Para Features
- Qual problema ela resolve **agora**?
- O que **deliberadamente não entra** nesta entrega?
- Existe alternativa mais simples?

---

## 3️⃣ Protocolo de Enquadramento Técnico

**Objetivo:** Criar limites claros para evitar escopo invisível.

Responder explicitamente:

- Onde vou mexer?
- Onde **não** vou mexer?
- Qual é o maior risco técnico?

Opcional (recomendado):
- Se minha solução estiver errada, onde isso aparecerá primeiro?

---

## 4️⃣ Protocolo de Estimativa

❌ Não estimar em horas  
✅ Estimar em **passos técnicos**

### Passos técnicos típicos
- Entendimento/refino da regra
- Alteração de código
- Ajuste de contrato
- Testes
- Integração
- Deploy/validação

👉 Regra prática:
- Cada passo ≈ 30 a 90 minutos
- Mais de 7 passos → **quebrar a demanda**

Registrar:
```text
Total de passos: __
Risco percebido: baixo | médio | alto