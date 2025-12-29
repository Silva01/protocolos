# 🥋 Protocolo Mushin — Investigação e Correção de Bugs

> **Princípio central**  
> Bug não é inimigo.  
> Bug é informação.

Este protocolo deve ser seguido **antes de tentar corrigir qualquer bug**, especialmente bugs intermitentes, críticos ou confusos.

---

## 1️⃣ Pausa Anti-Reação (1–2 minutos)

**Objetivo:** impedir correção impulsiva.

- Não abrir o código imediatamente
- Não pensar em solução
- Não assumir causa

Respiração lenta.  
Leia o relato do bug sem interpretar.

**Pergunta silenciosa:**  
> O que em mim quer “consertar logo” isso?

---

## 2️⃣ Leitura Literal do Bug (sem hipótese)

**Regra:** ler como um log, não como um diagnóstico.

Capture apenas fatos observáveis:
- O que aconteceu
- Quando aconteceu
- Onde aconteceu
- Com que dados
- Com que frequência

🚫 Proibido:
- Supor causa
- Lembrar bugs antigos
- Pensar em código

Se o bug não puder ser descrito em fatos → **ele ainda não existe claramente**.

---

## 3️⃣ Frase de Realidade Única

Complete **uma única frase**, simples e factual:

> **O sistema faz ______ quando deveria fazer ______.**

Sem explicação.  
Sem “porque”.

Se precisar de mais de uma frase → o bug está mal definido.

---

## 4️⃣ Reprodução Mushin (ver antes de pensar)

**Objetivo:** observar o bug acontecer.

- Reproduzir manualmente, se possível
- Ou via teste
- Ou via log

Durante a reprodução:
- Não pausar para pensar
- Não abrir o editor
- Apenas observar

📌 Mushin aqui é **ver a verdade sem narrativa**.

---

## 5️⃣ Mapa do Bug (sem solução)

Criar três listas simples:

### O que sabemos
- Fatos confirmados
- Comportamentos observados

### O que não sabemos
- Pontos cegos
- Condições não testadas

### O que assumimos (perigoso)
- “Isso sempre funcionou”
- “Esse código é estável”
- “Deve ser concorrência”
- “Deve ser dado inválido”

⚠️ Assunção não listada = armadilha.

---

## 6️⃣ Primeira Hipótese Consciente (apenas uma)

Formular **uma hipótese testável**, no formato:

> Se ______ for verdade, então ______ deve acontecer.

🚫 Nunca trabalhar com múltiplas hipóteses ao mesmo tempo.

Mushin = foco absoluto.

---

## 7️⃣ Teste antes do Código

Antes de alterar qualquer linha:

- Criar log
- Criar breakpoint
- Criar teste
- Criar simulação

Pergunta obrigatória:
> O que preciso observar para confirmar ou refutar minha hipótese?

Se não souber responder → volte à etapa anterior.

---

## 8️⃣ Correção Mínima

Regra rígida:

> **Corrigir apenas o suficiente para quebrar o bug.**

- Não refatorar
- Não “aproveitar a viagem”
- Não melhorar estilo
- Não limpar código antigo

📌 Se quiser melhorar algo → abra outro ticket.

---

## 9️⃣ Verificação Pós-Correção

Responder com honestidade:

- O bug realmente não acontece mais?
- O comportamento correto está explícito?
- O que impediu esse bug de ser visto antes?

Registrar **uma frase**.

---

## 1️⃣0️⃣ Proteção Pós-Bug

Adicionar **uma proteção consciente**:
- Teste
- Log
- Validação
- Assertiva

Não como punição, mas como aprendizado.

---

## ✅ Indicadores de Mushin no Debug

- Menos tentativas aleatórias
- Menos alterações colaterais
- Hipóteses mais claras
- Debug mais calmo
- Bugs resolvidos mais rápido (mesmo parecendo mais lento no início)

---

## ⚠️ Anti-padrões de Debug (quebram o Mushin)

- “Vou tentar isso rapidinho”
- Alterar código sem reproduzir
- Trabalhar com múltiplas hipóteses
- Corrigir sintoma sem entender o comportamento
- Debug com pressa emocional

---

## 🪨 Koans Operacionais de Debug

> O que o sistema está realmente fazendo agora?

> O que eu estou assumindo sem prova?

> Onde estou tentando ser rápido demais?

---

## 📏 Regra dos 30 dias

Usar este protocolo por 30 dias antes de julgar eficiência.

Sinais de progresso:
- Menos retrabalho
- Menos bugs reabertos
- Mais confiança no diagnóstico
- Menos cansaço mental após debug

---

> **Mushin não elimina o erro.  
Ele elimina o ruído ao redor do erro.**
