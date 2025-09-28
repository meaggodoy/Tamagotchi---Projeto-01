# Tamagotchi---Projeto-01
Primeiro projeto da disciplina de Conceitos de Algoritmos.

Apresentado no dia 23 de novembro de 1996, o Tamagotchi era uma espécie de chaveiro que
abrigava um bichinho virtual que pedia por doses regulares de alimento virtual, atenção virtual
e carinho virtual. Agora, você! Isso mesmo, você, junto de seu time de desenvolvimento, terá a
honra de implementar uma versão dessa febre dos anos 90.
O virtual pet terá as seguintes informações atreladas a ele:
- Tempo de vida: inicia com 0 dias vivo, a cada 24 horas, envelhece um dia. O tempo
máximo de vida é de 7 dias.
- Felicidade: começa em 5. Comer ao estar com fome, brincar e dormir, aumentam esse
atributo. Ser forçado a comer ou ficar muito tempo sujo e sem diversão (jogar), diminuem esse
atributo. O valor máximo para esse atributo é 10. Caso o atributo felicidade chegue a zero, o
virtual pet morre de tristeza 😕 .
- Limpeza: Esse atributo inicia com 10 pontos. Ao passar o tempo sem tomar banho,
esse atributo diminui. Um bichinho super sujo morre por sujeira. Tomar banho aumenta esse
atributo. Tomar banho estando limpo diminui o atributo felicidade.
- Fome: Esse atributo inicia com 0. Ao passar o tempo, esse atributo aumenta. Um pet
faminto morre de fome. Comer diminui esse atributo, até chegar ao máximo de zero. Tentar
alimentar um pet contra sua vontade o deixará triste.
- Doente: Esse atributo indicará se o pet está ou não doente. Ele poderá ficar doente
ao acaso (de maneira aleatória). Caso ele esteja doente, a cada 8 horas ele deverá ter chance
de se curar sozinho. Isso acontecerá com 33.3% de chance após 8 horas da doença iniciada.
Após 16 horas ele terá 66.6% de chance de ser curado e após 24 horas ele estará curado.
O projeto deve conter todas as funcionalidades detalhadas na seção de menu a seguir. Além
disso, ao iniciar o programa pela primeira vez, o usuário deverá escolher o nome para seu
‘virtual pet’. A partir daí, todas as frases deverão ser personalizadas para chamar o bichinho
pelo nome escolhido.
O trabalho se consiste em desenvolver um projeto funcional de um bichinho virtual. O algoritmo
deve ter um menu inicial, com as seguintes opções:
1. Avançar o tempo
2. Alimentar
3. Jogar
4. Dar banho
5. Ver status
6. Desligar
Detalhamento de funções
• Avançar o tempo: Ao escolher essa função, o jogador faz o pet “avançar 8 horas de vida”
em seu tempo. Isso impactará em diversas das funcionalidades do bichinho virtual. A cada
24horas passadas, o pet envelhece um dia. O tempo máximo de vida para o pet é de 7
dias, após isso, ele morre de velhice. Nesse caso, o jogador ‘ganha o jogo’, pois fez com
que seu bichinho vivesse feliz até o fim.
• Alimentar: Ao alimentar o pet, sua fome diminuirá em 4 pontos. Chegando ao máximo de
fome 0. Tentar alimentar um pet que está com fome 0, fará com que sua felicidade diminua
em 2 pontos.
• Jogar: Ao escolher a função jogar, o pet e o usuário farão uma partida de pedra, papel e
tesoura. Caso o pet vença, sua felicidade aumentará em 5 pontos. Caso ele perca, sua
felicidade aumentará em 3 pontos.
• Dar banho: A função de dar banho fará com que a limpeza de seu pet chegue a 10 pontos.
A cada 8 horas, o pet perde 2 pontos em limpeza. Tentar dar banho em um pet com 10
pontos de limpeza, fará com que ele reduza a felicidade em 6 pontos.
• Ver status: A função ver status deve mostrar ao usuário todas as informações pertinentes
para que o usuário possa cuidar de seu pet da maneira adequada. Também deve mostrar
a idade atual do pet. Extra: O programador pode disparar mensagens fora dessa função
para alertar ao usuário quando seu pet estiver necessitando de cuidado urgente, para
tentar evitar sua morte precoce.
• Caso o pet morra de fome, tristeza ou sujeira, o programa deverá encerrar, mostrando a
mensagem para o usuário de tempo de vida do pet e informando a causa da sua morte
precoce.
