programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro menu
		inteiro avancarTempo, tempoHora = 0, tempoDia = 0
		inteiro fome = 0, felicidade = 5, alimentar
		inteiro numSelecionado, jokenpo
		inteiro tomarBanho, limpeza = 10
		
		faca {
			escreva("\nDigite uma opção \n1 - Avançar Tempo; 2 - Alimentar; 3 - Jogar; 4 - Dar Banho; 5 - Ver Status; 6 - Desligar ")
			leia(menu)
			escreva("--------------\n")

			se (menu == 1) {
				//função avançar tempo -> cada avanço representa 8 horas; 1 dia são 3 avanços; o pet vive por 7 dias

				faca {
					escreva("Avançar tempo? \n0 - Não; 1 - Sim; 2 - Voltar para o menu ")
					leia(avancarTempo)
	
					se (avancarTempo == 1) {
						tempoHora = tempoHora + 8

						fome = fome + 4
	        				se (fome > 10) {
	        					fome = 10
	        				}
	        				
	        				limpeza = limpeza - 2
	        				se (limpeza < 0) {
	        					limpeza = 0
	        				}
	        				
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
					escreva("Alimentar o pet? \n1 - Sim; 2 - Não ")
					leia(alimentar) 

					se (alimentar == 1){
						se (fome <= 0) {
							fome = 0
							felicidade = felicidade - 2
							
	        					se (felicidade < 0) {
	        						felicidade = 0
	        					}

							escreva("\nO pet não queria comer e ficou triste...")

							se (felicidade >= 7 ) {
								escreva("\nSeu pet ainda está feliz, apesar disso. Felicidade em ", felicidade)
							} se (felicidade >= 4 e felicidade < 7) {
								escreva("\nSeu pet está ficando triste.. Felicidade em ", felicidade)
							} se (felicidade < 4 e felicidade > 0) {
								escreva("\nSeu pet ficou triste! Vamos jogar? Felicidade em ", felicidade)
							}
						} se (fome > 0){
							fome = fome - 4
							felicidade = felicidade + 2
							
	        					se (felicidade > 10) {
	        						felicidade = 10
	        					}
						
							escreva ("\nVocê alimentou o pet!")


							se (felicidade >= 7 ) {
								escreva("\nSeu pet está feliz! Felicidade em ", felicidade)
							} se (felicidade >= 4 e felicidade < 7) {
								escreva("\nSeu pet ainda está um pouco triste.. Felicidade em ", felicidade)
							} se (felicidade < 4) {
								escreva("\nSeu pet está triste! Que tal jogarmos? Felicidade em ", felicidade)
							}

							 se (fome >= 7 ) {
								escreva("\nSeu pet ainda está com fome! Alimente-o novamente! Fome em ", fome)
							} se (fome >= 4 e fome < 7) {
								escreva("\nSeu pet ainda está com um pouco de fome.. Vamos alimentá-lo novamente? Fome em ", fome)
							} se (fome < 4) {
								escreva("\nSeu pet está está bem alimentado! Fome em", fome)
							}
						}
					} se (alimentar == 2){
						escreva("\nVocê decidiu não alimentar o pet!")
						escreva("\nFome atual: ", fome)
						escreva("\nFelicidade atual: ", felicidade)
						
						escreva("\n--------------\n")
					}
				} enquanto (fome >= 4 e felicidade > 0 e alimentar > 1)
			} se (menu == 3) {
				faca {
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

	        					se (felicidade > 10) {
	        						felicidade = 10
	        					}
	      				} senao se ((numSelecionado == 1 e jokenpo == 3) ou (numSelecionado == 2 e jokenpo == 1) ou (numSelecionado == 3 e jokenpo == 2)){
	        					escreva("Você ganhou e eu perdi! Você tem muita sorte haha")
	        					felicidade = felicidade + 3

	        					se (felicidade > 10) {
	        						felicidade = 10
	        					}
	      				} senao {
	        					escreva("Eu ganhei e você perdeu, haha! Sou incrível")
	        					felicidade = felicidade + 5
	        					
	        					se (felicidade > 10) {
	        						felicidade = 10
	        					}
	      				}

	      				se (felicidade >= 7 ) {
							escreva("\nSeu pet está feliz! Felicidade em ", felicidade)
						} se (felicidade >= 4 e felicidade < 7) {
							escreva("\nSeu pet ainda está um pouco triste.. Felicidade em ", felicidade)
						} se (felicidade < 4) {
							escreva("\nSeu pet está triste! Que tal jogarmos novamente? Felicidade em ", felicidade)
						}
	      			} senao {
	      				escreva("Você não escolheu corretamente! :(\n")
	    				}
				} enquanto (numSelecionado > 3)
  			} se (menu == 4) {
					escreva("Dar banho? \n1 - Sim; 2 - Não ")
					leia(tomarBanho)

					se(tomarBanho == 1){
						se (limpeza >= 10){
							felicidade = felicidade - 6

	        					se (felicidade < 0) {
	        						felicidade = 0
	        					}
							
							se (felicidade > 0) {	
								escreva("Você deu banho no seu pet, mas ele não estava sujo!")
	
								se (felicidade >= 7 ) {
									escreva("\nApesar disso, seu pet está feliz. Felicidade em ", felicidade)
								} se (felicidade >= 4 e felicidade < 7) {
									escreva("\nSeu pet acabou ficando um pouco triste.. Felicidade em ", felicidade)
								} se (felicidade < 4) {
									escreva("\nSeu pet ficou triste! Que tal jogarmos? Felicidade em ", felicidade)
								}
							}
						} se (limpeza < 10) {
							limpeza = 10
							escreva("Você deu banho no seu pet!") 
							escreva("\nSeu pet está com a limpeza em: ", limpeza)
						} 
					} se(tomarBanho == 2) { 
						escreva("Seu pet não quer tomar banho")
					}																
  			} se (menu == 5) {
  				se (tempoDia <= 1) {
					escreva("A idade do pet é ", tempoDia, " dia e ", tempoHora, " horas")
				} se (tempoDia > 1 e tempoDia < 7) {
					escreva("A idade do pet é ", tempoDia, " dias e ", tempoHora, " horas")
				} 

				se (limpeza >= 7 ) {
					escreva("\nSeu pet está limpo! Limpeza em ", limpeza)
				} se (limpeza >= 4 e limpeza < 7) {
					escreva("\nSeu pet está ficando sujo.. Limpeza em ", limpeza)
				} se (limpeza < 4) {
					escreva("\nSeu pet está sujo! Limpeza em ", limpeza)
				}

				se (felicidade >= 7 ) {
					escreva("\nSeu pet está feliz! Felicidade em ", felicidade)
				} se (felicidade >= 4 e felicidade < 7) {
					escreva("\nSeu pet está ficando triste.. Felicidade em ", felicidade)
				} se (felicidade < 4) {
					escreva("\nSeu pet está triste! Felicidade em ", felicidade)
				}
  				
  				se (fome >= 7 ) {
					escreva("\nSeu pet está com fome! Fome em ", fome)
				} se (fome >= 4 e fome < 7) {
					escreva("\nSeu pet está ficando com fome.. Fome em ", fome)
				} se (fome < 4) {
					escreva("\nSeu pet está está bem alimentado! Fome em ", fome)
				}
  			}
		} enquanto (menu < 6 e felicidade > 0 e fome < 10 e limpeza > 0 e tempoDia < 7)

		//criar area de experiência e resultado do usuário
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */