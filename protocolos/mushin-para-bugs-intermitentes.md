# 🥋 Protocolo Mushin — Bugs Intermitentes e Não Reproduzíveis

> **Princípio central**  
> Bug intermitente não é algo a ser corrigido imediatamente.  
> É algo a ser **observado conscientemente**.

Este protocolo deve ser aplicado **sempre que um bug**:
- Aconteceu apenas uma vez, ou
- Acontece “de vez em quando”, ou
- Não pode ser reproduzido localmente, ou
- Não deixou rastros claros

---

## 1️⃣ Suspensão da Ação (Mushin Inicial)

**Objetivo:** impedir correção por ansiedade.

Ações proibidas neste momento:
- Alterar código
- Refatorar “por segurança”
- Criar flags defensivas
- Supor causa

Ação obrigatória:
- Parar por 1–2 minutos
- Respirar
- Aceitar conscientemente:

> **Hoje, não vou corrigir nada.**

Isso não é inação.  
É disciplina.

---

## 2️⃣ Definição do Evento (não do bug)

Bug intermitente deve ser tratado como **evento**, não como defeito.

Registrar apenas fatos observáveis:
- Quando aconteceu
- Onde aconteceu
- Impacto real
- Frequência conhecida
- Ambiente

🚫 Não escrever:
- “Provavelmente”
- “Acho que”
- “Deve ser”

Se não for possível descrever o evento sem hipótese → pare.

---

## 3️⃣ Frase de Realidade Intermitente

Escrever **uma única frase**, factual:

> **Em algum momento, o sistema fez ______ quando esperado ______.**

Sem explicação.  
Sem narrativa técnica.

Essa frase é o “alvo” do protocolo.

---

## 4️⃣ Linha Vermelha Mushin (limite explícito)

Declarar conscientemente:

> **Se este evento não ocorrer novamente, nenhuma alteração funcional será feita.**

Essa linha protege o sistema contra:
- Correções imaginárias
- Complexidade acumulada
- Bugs introduzidos por medo

---

## 5️⃣ Mapeamento de Dimensões (sem causa)

Listar **dimensões de possibilidade**, não hipóteses:

- Tempo (horário, duração, delays)
- Volume (carga, tamanho de dados)
- Ordem de eventos
- Concorrência
- Dependências externas
- Estados raros

🚫 Não concluir nada  
🚫 Não priorizar ainda  

Apenas mapear.

---

## 6️⃣ Instrumentação Consciente (lanterna, não holofote)

Objetivo:
> **Quando acontecer de novo, eu preciso VER algo novo.**

Adicionar instrumentação mínima:
- Logs de fronteira
- Identificadores de correlação
- Estados antes/depois
- Métricas simples

Cada adição deve responder:
> O que hoje é invisível?

🚫 Proibido:
- “Logar tudo”
- Alterar lógica
- Refatorar código

---

## 7️⃣ Diário do Bug Intermitente (mente externa)

Manter um registro simples:

- Data do evento
- Contexto conhecido
- Impacto
- Instrumentação adicionada
- Decisão tomada (esperar)

Nenhuma hipótese é registrada aqui.

Isso evita:
- Esquecimento
- Reação emocional futura
- Reabrir o mesmo bug do zero

---

## 8️⃣ Espera Ativa (Mushin verdadeiro)

Agora:
- Não procurar o bug
- Não “ficar de olho”
- Não antecipar correção

Confie na observabilidade criada.

Mushin aqui é:
> **esperar sem ansiedade**.

---

## 9️⃣ Quando o Evento Reaparece

Ações permitidas:
- Coletar dados
- Comparar com o diário
- Ver diferenças entre ocorrências

Ações proibidas:
- Comemorar
- Desesperar
- “Finalmente!”

Somente após dados novos:
👉 aplicar o **Protocolo Mushin de Bugs padrão**.

---

## 1️⃣0️⃣ Correção Tardia e Precisa

Quando (e somente quando):
- O evento se tornou observável
- Existe evidência
- Existe hipótese testável

Corrigir:
- O mínimo necessário
- Um comportamento por vez
- Sem refatorações colaterais

---

## ✅ Indicadores de Mushin bem aplicado

- Menos código defensivo
- Menos flags inúteis
- Sistema mais observável
- Menos bugs introduzidos
- Mais confiança em produção

---

## ⚠️ Anti-padrões Clássicos

- “Nunca mais aconteceu, então deve ter resolvido”
- “Vou prevenir isso aqui rapidinho”
- Corrigir sem evidência
- Confundir paz mental com estabilidade do sistema

---

## 🪨 Koans Operacionais

> O que estou tentando corrigir sem conseguir observar?

> Onde estou tentando aliviar minha ansiedade, não o sistema?

> O que acontece se esse bug nunca mais voltar?

---

## 📏 Regra dos 60 dias

Bugs intermitentes devem ser acompanhados por até **60 dias** antes de decisões estruturais.

Maturidade aparece como:
- Menos reações
- Mais observabilidade
- Correções mais cirúrgicas
- Sistemas mais simples

---

> **Mushin não persegue fantasmas.  
Ele constrói lanternas.**
