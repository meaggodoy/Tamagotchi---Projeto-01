programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro menu
		inteiro avancarTempo, tempoHora = 0, tempoDia = 0
		inteiro fome = 0, felicidade = 5, opcao
		inteiro numSelecionado, jokenpo
		inteiro tomarBanho, limpeza = 1
		
		faca {
			escreva("\nDigite uma opção \n1 - Avançar Tempo; 2 - Alimentar; 3 - Jogar; 4 - Dar Banho; 5 - Ver Status; 6 - Desligar ")
			leia(menu)

			se (menu == 1) {
				//função avançar tempo -> cada avanço representa 8 horas; 1 dia são 3 avanços; o pet vive por 7 dias

				faca {
					escreva("Avançar tempo? \n0 - não; 1 - Sim; 2 - Voltar para o menu ")
					leia(avancarTempo)
	
					se (avancarTempo == 1) {
						tempoHora = tempoHora + 8
	
						se (tempoHora == 24) {
							tempoDia++
							tempoHora = 0
						}
					}
	
					se (tempoDia <= 1) {
						escreva(tempoDia, " dia e ", tempoHora, " horas")
					} se (tempoDia > 1 e tempoDia < 7) {
						escreva(tempoDia, " dias e ", tempoHora, " horas")
					} se (tempoDia == 7) {
						escreva("\n--------------\n")
						escreva("Seu pet chegou ao fim da vida\n")
						escreva(tempoDia, " dias e ", tempoHora, " horas")
					}
			
					escreva("\n--------------\n")
				} enquanto (avancarTempo < 2 e tempoDia < 7)
			} se (menu == 2) {
				faca {
					escreva("\nOpção 1: Alimentar o pet")
					escreva("\nOpção 2: Não alimentar o pet")
					escreva("\nDigite a opção desejada: ")
					leia(opcao)

					se (opcao == 1){
						se (fome > 0){
							fome = fome - 4
						
							escreva ("\nVocê alimentou o pet!")
							escreva ("\nFome atual: ",fome)
							escreva("\nFelicidade atual: ", felicidade)
						} se (fome <= 0) {
							fome = 0
							felicidade = felicidade - 2

							escreva("\nO pet não queria comer e ficou triste...")
							escreva("\nFelicidade atual: ", felicidade)
						}
					} se (opcao == 2){
						escreva("\nVocê decidiu não alimentar o pet!")
						escreva("\nFome atual: ", fome)
						escreva("\nFelicidade atual: ", felicidade)
					}
				} enquanto (opcao < 2)
			} se (menu == 3) {
				escreva("\nVamos jogar um jogo!Ele se chama jokenpo, vou te passar as instruções.")
    				escreva("\nVamos escolher pedra, papel ou tesoura.")
    				escreva("\nPedra ganha de tesoura, papel ganha de pedra e tesoura ganha de papel.")
    				escreva("\nPara escolher PEDRA digite (1), para escolher PAPEL digite (2) ou para escolher TESOURA digite (3).")
    				escreva("\nVamos lá? Escolha agora! ")
    				leia(numSelecionado)

    				jokenpo = u.sorteia(1,3)

    				se(numSelecionado > 0 e numSelecionado < 4){
      				se (numSelecionado == jokenpo){
        					escreva("Nossa! Nos empatamos haha, ninguem ganhou ou perdeu! :/ ")
        					felicidade = felicidade + 1
      				} senao se ((numSelecionado==1 e jokenpo==3) ou (numSelecionado==2 e jokenpo==1) ou (numSelecionado==3 e jokenpo==2)){
        					escreva("Você ganhou e eu perdi! Você tem muita sorte haha")
        					felicidade=felicidade+3
      				} senao {
        					escreva("Eu ganhei e você perdeu, haha! Sou incrivel")
        					felicidade=felicidade+5
      				}
      			} senao {
      				escreva("Você não escolheu corretamente! :(")
    				}
      				escreva("\nA minha felicidade agora é de: ",felicidade)
  			} se (menu == 4) {
  				faca{
					escreva("\n1Deseja tomar banho: \n1 - Sim; 2 - Não ")
					leia(tomarBanho)

					se(tomarBanho == 1){
						limpeza = 10
						escreva("Seu pet está com a limpeza em: ", limpeza)
						
						se (limpeza >= 10){
							felicidade = felicidade - 6
							escreva("\nA felicidade do pet é: ", felicidade)	
						} se (felicidade <= 0) {
							escreva("\nSeu pet morreu -_-")	
						}
					} se(tomarBanho == 2) {
						escreva("Seu pet não quer tomar banho")
					}																
				} enquanto (tomarBanho == 1 e felicidade>=0)
  			}
		} enquanto (menu < 6)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3419; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */