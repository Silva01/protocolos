🧠 Protocolo — Treino de Regras Arquiteturais Baseadas em Sinais

Objetivo

Treinar o raciocínio arquitetural para:
	•	observar sinais arquiteturais
	•	evitar decisões prematuras
	•	escrever regras que criam consciência, não obrigação
	•	amadurecer julgamento arquitetural de forma consistente

⸻

📍 Princípio Base

Arquitetura trabalha com sinais e impactos, não com ordens e soluções.

Toda regra nasce de um sinal observado, não de uma ação desejada.

⸻

🧩 FASE 1 — OBSERVAÇÃO (Leitura consciente)

Duração: 5–10 minutos  
Frequência: diária ou por classe analisada

Checklist mental (não escrever ainda):
	•	Onde esse código cresce quando adiciono uma feature?
	•	Onde o nome não bate com o comportamento?
	•	Onde a estrutura se repete?
	•	O que esse código está tentando esconder?
	•	Onde a mudança custa mais do que deveria?

⚠️ Regra da fase:  \

Não pensar em solução.

⸻

🧩 FASE 2 — REGISTRO DO SINAL (TODO técnico)

Formato obrigatório do TODO
	•	Sem verbo de ação
	•	Sem solução
	•	Apenas observação + sinal

// TODO[CATEGORIA]: <sinal arquitetural observado>


Exemplos

// TODO[CRESCIMENTO]: Nova feature exige novo método na mesma classe

// TODO[INTENCAO]: Classe atua como dispatcher, mas está nomeada como Service

// TODO[DUPLICIDADE]: Métodos compartilham a mesma estrutura de execução


❌ Proibido nesta fase:
	•	extrair
	•	refatorar
	•	criar
	•	mudar

⸻

🧩 FASE 3 — CONSOLIDAÇÃO (Markdown)

Ferramenta: script automático  
Saída: lista de bullets técnicos

Nesta fase:
	•	Não criar regras
	•	Não decidir soluções
	•	Apenas ler os padrões emergentes

Pergunta-chave:  \

Esse sinal apareceu mais de uma vez?

⸻

🧩 FASE 4 — MATURAÇÃO (Tempo)

Regra absoluta do protocolo

❌ Nunca escrever a regra no mesmo dia do bullet

Intervalo mínimo recomendado:
	•	1 dia
	•	Ideal: após analisar outra classe

🧠 Objetivo:
	•	reduzir viés emocional
	•	ganhar neutralidade
	•	melhorar linguagem

⸻

🧩 FASE 5 — ESCRITA DA REGRA (Arquitetural)

Template oficial de Regra

[Regra]
Quando <condição observável>,
isso indica <sinal arquitetural>,
e tende a <impacto estrutural ao longo do tempo>.

Exemplos

[Regra]
Quando a adição de novas features exige a criação recorrente de novos métodos em uma mesma classe,
isso indica violação do princípio do OCP,
e tende a aumentar acoplamento e complexidade estrutural.

[Regra]
Quando múltiplos métodos compartilham a mesma estrutura de execução,
isso indica a existência de comportamento comum,
cuja duplicação tende a aumentar custo de manutenção e risco de inconsistência.


⸻

🧩 FASE 6 — VALIDAÇÃO DA REGRA

Antes de aceitar a regra, validar com este checklist:
	•	🔲 A regra descreve um sinal, não uma solução?
	•	🔲 Ela vale fora dessa classe específica?
	•	🔲 Ela admite exceções implícitas?
	•	🔲 Ela ajuda alguém a pensar melhor, não a obedecer?
	•	🔲 Ela ainda faria sentido daqui a 1 ano?

Se falhar em 2 ou mais → regra ainda verde.

⸻

🧠 HEURÍSTICAS MENTAIS (para treinar o cérebro)

Substituir automaticamente:

Evitar	Usar
deve	indica
precisa	sinaliza
sempre	tende a
errado	arriscado
corrigir	avaliar


⸻

⏱️ RITMO RECOMENDADO
	•	1 classe → 1 a 3 bullets
	•	1 regra → somente após 2+ ocorrências
	•	Melhor regra é curta e “incompleta”

⸻

🏁 CRITÉRIO DE SUCESSO DO PROTOCOLO

Você saberá que o protocolo está funcionando quando:
	•	regras prescritivas começarem a incomodar
	•	você escrever menos e pensar mais
	•	identificar problemas sem urgência de resolver
	•	regras parecerem “chatas, mas verdadeiras”

⸻

🧠 FRASE-ÂNCORA

Arquitetura não é decidir o que fazer.  
É perceber o que está acontecendo antes que vire problema.
