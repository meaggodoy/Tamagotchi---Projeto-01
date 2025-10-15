# 🐾 Bitzi – Seu Novo Pet Virtual  

### Projeto da disciplina **Conceitos de Algoritmos**  
Desenvolvido por **GLGM StudIos**

---

## 📖 Sobre o Projeto  

Apresentado pela primeira vez em 1996, o **Tamagotchi** marcou gerações como o primeiro bichinho virtual que precisava de cuidados e atenção constantes.  
Inspirado nessa ideia, o projeto **BitziBitzi** recria essa experiência nostálgica com um toque moderno, implementando um **pet virtual interativo** totalmente programado em linguagem de algoritmo.

O objetivo é simular o ciclo de vida de um pet digital, permitindo ao jogador alimentá-lo, brincar, dar banho, acompanhar seu humor e garantir que ele viva feliz até o fim de sua jornada.  

---

## 💻 Funcionalidades Principais  

O BitziBitzi possui um **menu interativo** com as seguintes opções:

### ▶️ Avançar o tempo  
- Avança **8 horas de vida** do pet.  
- A cada **24 horas**, ele envelhece **1 dia**.  
- O tempo máximo de vida é de **7 dias** — se alcançar, o jogador **vence o jogo**.  

### 🍖 Alimentar  
- Diminui a **fome** em 4 pontos (mínimo 0).  
- Alimentar sem necessidade reduz a **felicidade** em 2 pontos.  

### 🎮 Jogar  
- Realiza uma partida de **Pedra, Papel e Tesoura** entre o jogador e o pet.  
- Se o pet vencer → **+5 felicidade**  
- Se o pet perder → **+3 felicidade**  

### 🧼 Dar banho  
- Restaura a **limpeza** para 10 pontos.  
- A cada 8 horas, o pet perde **2 pontos de limpeza**.  
- Dar banho com limpeza máxima reduz a **felicidade** em 6 pontos.  

### 💓 Ver status  
- Mostra os atributos atuais:  
  - Idade  
  - Felicidade  
  - Fome  
  - Limpeza  
  - Estado de saúde (doente ou saudável)  

### ❌ Desligar  
- Encerra o programa e mostra um resumo final da vida do pet.

---

## ⚙️ Atributos do Pet  

| 🧩 Atributo | 💬 Descrição | ☠️ Condições de Morte |
|--------------|---------------|-----------------------|
| **Tempo de vida** | Começa com 0 dias e vai até 7. | Morre de velhice após 7 dias. |
| **Felicidade** | Começa com 5 (máximo 10). | Se chegar a 0 → morre de tristeza. |
| **Limpeza** | Começa com 10. | Se chegar a 0 → morre por sujeira. |
| **Fome** | Começa com 0. | Se chegar ao máximo (10) → morre de fome. |
| **Doença** | Pode ocorrer aleatoriamente. | Recuperação automática conforme tempo (33%, 66%, 100%). |

---

## 🧠 Lógica do Sistema  

- Cada ação impacta diretamente o estado emocional e físico do pet.  
- O tempo é o principal fator de progressão.  
- As decisões do jogador determinam se o pet viverá feliz ou morrerá precocemente.  
- Mensagens de alerta informam quando o pet precisa de atenção imediata.  

---

## 🧩 Estrutura do Código  

O programa foi desenvolvido com **estrutura modular**, contendo funções separadas para:  
- Controle de tempo e envelhecimento  
- Alimentação e cálculo de fome  
- Interações (jogar, banho, etc.)  
- Sistema de doenças aleatórias  
- Exibição de status e encerramento do jogo  

---

## 🌟 Diferenciais  

- Sistema de **eventos aleatórios** e consequências reais.  
- Interações simples e dinâmicas.  
- Código otimizado e adaptável para **desktop, web ou mobile**.  
- **Baixo consumo de recursos** e estrutura pronta para expansão futura  
  (cores, tipos de pet, interface gráfica etc).  

---

## 👥 Sobre a Equipe  

### **GLGM StudIos**
> Estúdio de tecnologia focado em entretenimento digital e simulações interativas.  

**Missão:** Criar experiências virtuais que conectem pessoas e tecnologia.  
**Visão:** Tornar-se referência em pets virtuais e jogos de simulação.  
**Valores:** Criatividade, inovação, engajamento e diversão.  

---

## 🎯 Público-Alvo  

- Jovens e adultos nostálgicos dos Tamagotchis.  
- Jogadores casuais em busca de experiências leves e relaxantes.  
- Usuários de desktop e mobile que apreciam jogos simples e recompensadores.  

---
Obrigada :)
