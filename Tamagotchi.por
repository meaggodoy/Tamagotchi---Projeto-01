programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro menu, avancarTempo, tempoHora = 0, tempoDia = 0, fome = 0, felicidade = 5, alimentar, numSelecionado, jokenpo, tomarBanho, limpeza = 10, chanceCurar, chanceDoente, horasDoente = 0
		logico estaDoente = falso
		cadeia nomePet

		escreva("Olá, cuidador(a)! Um novo bichinho virtual acaba de nascer e precisa da sua ajuda para crescer saudável e feliz! \nDurante 7 dias, suas ações vão influenciar o humor, a fome e até o destino dele. Pronto para embarcar nessa aventura? \nDê um nome especial ao seu novo amiguinho! ")
		leia(nomePet)
		escreva("--------------\n")
		escreva("Ótimo! Então o nome dele será ", nomePet, ". Agora que já temos um nome, vamos às regras do jogo: ")
		escreva("Você terá 7 dias para cuidar de ", nomePet, ". \nMantenha-o alimentado para que não fique com fome. \nCuide da felicidade dele brincando e dando atenção. \nNão se esqueça da limpeza — ninguém gosta de sujeira!\nE lembre-se: o tempo passa, então planeje bem suas ações.")
		escreva("\nSeu objetivo é manter ", nomePet, " vivo e feliz até o fim dos 7 dias. Está pronto para começar?")
		escreva("\n--------------")

		faca {
			escreva("\nDigite uma opção \n1 - Avançar Tempo; 2 - Alimentar; 3 - Jogar; 4 - Dar Banho; 5 - Ver Status; 6 - Desligar ")
			leia(menu)
			escreva("--------------\n")

			se (menu == 1) {
				//função avançar tempo -> cada avanço representa 8 horas; 1 dia são 3 avanços; o pet vive por 7 dias

				faca {
					escreva("Avançar tempo? \n1 - Sim; 2 - Não ")
					leia(avancarTempo)
	
					se (avancarTempo == 1) {
						tempoHora = tempoHora + 8

						//a cada 8h o pet tem chance de se curar sozinho
						se (estaDoente == verdadeiro) {
							horasDoente = horasDoente + 8
  							escreva(nomePet, " esta à " , horasDoente ," horas doente :(\n")

  							se(horasDoente == 8){
    								chanceCurar = u.sorteia(1,3)
    								
								se(chanceCurar == 1){
							     	estaDoente = falso
							     	horasDoente = 0
							     	escreva(nomePet, " esta curado(a)!!")
								}
							} se (horasDoente == 16) {
							     chanceCurar = u.sorteia(1,3)
							     
							     se (chanceCurar <= 2) {
							     	estaDoente = falso
							     	horasDoente = 0
							     	escreva(nomePet, " esta curado(a)!!")
							     }
							} se (horasDoente >= 24) {
							    estaDoente = falso
							    horasDoente = 0 
							    escreva(nomePet, " esta curado(a)!!")
							}
						}

						//a cada avancar tempo a limpeza diminui em 2 e a fome aumenta
						fome = fome + 4
						se (fome >= 7 ) {
							escreva(nomePet, " está com fome! Vamos alimentá-lo(a)? Fome em ", fome)
						} se (fome >= 4 e fome < 7) {
							escreva(nomePet, " está com um pouco de fome.. Fome em ", fome)
						} se (fome < 4) {
							escreva(nomePet, " está está bem alimentado(a)! Fome em", fome)
						}
	        				
	        				limpeza = limpeza - 2	        				
						se (limpeza >= 7 ) {
							escreva("\n", nomePet, " está limpo(a)! Limpeza em ", limpeza)
						} se (limpeza >= 4 e limpeza < 7) {
							escreva("\n", nomePet, " está ficando sujo(a).. Limpeza em ", limpeza)
						} se (limpeza < 4) {
							escreva("\n", nomePet, " está sujo(a)! Limpeza em ", limpeza)
						}
						
						se (tempoHora == 24) {
							tempoDia++
							tempoHora = 0
						}
					} se (avancarTempo == 2) {
						escreva("\n
					}
	
					se (tempoDia <= 1) {
						escreva("\n", tempoDia, " dia e ", tempoHora, " horas")
					} se (tempoDia > 1 e tempoDia < 7) {
						escreva("\n", tempoDia, " dias e ", tempoHora, " horas")
					}
					
					escreva("\n--------------\n")
				} enquanto (avancarTempo < 2 e tempoDia < 7 e fome < 10 e limpeza > 0)
			} se (menu == 2) {
				faca {
					//funcao alimentar -> ao alimentar o pet a fome diminui em 4 com máximo de 0; caso nao esteja com fome a felicidade diminui em 2
					escreva("Vamos alimentar o(a) ", nomePet,"? \n1 - Sim; 2 - Não ")
					leia(alimentar) 

					se (alimentar == 1){
						//o pet tem chance de ficar doente
						se(nao estaDoente){
      						chanceDoente = u.sorteia(1,10)
        							
        						se(chanceDoente == 3){
        							escreva(nomePet, " deve ter comido algo estragado e acabou ficando(a) doente! :(\n")
        							estaDoente = verdadeiro
        							horasDoente = 0
    							}
  						}
						
						se (fome <= 0) {
							fome = 0
							felicidade = felicidade - 2

							escreva(nomePet, " não queria comer e se chateou um pouco...")

							se (felicidade >= 7 ) {
								escreva("\nApesar disso, ", nomePet, " ainda está feliz. Felicidade em ", felicidade)
							} se (felicidade >= 4 e felicidade < 7) {
								escreva("\n", nomePet, " está ficando triste.. Felicidade em ", felicidade)
							} se (felicidade < 4 e felicidade > 0) {
								escreva("\n", nomePet, " ficou triste! Vamos jogar? Felicidade em ", felicidade)
							}
						} se (fome > 0){
							fome = fome - 4
							felicidade = felicidade + 2
							
	        					se (felicidade > 10) {
	        						felicidade = 10
	        					}

	        					se (fome < 0) {
	        						fome = 0
	        					}
						
							escreva ("\nVocê alimentou ", nomePet, "!")

							se (felicidade >= 7 ) {
								escreva("\n", nomePet, " está feliz! Felicidade em ", felicidade)
							} se (felicidade >= 4 e felicidade < 7) {
								escreva("\n", nomePet, " ainda está um pouco triste.. Felicidade em ", felicidade)
							} se (felicidade < 4) {
								escreva("\n", nomePet, " está triste! Que tal jogarmos? Felicidade em ", felicidade)
							}

							se (fome >= 7 ) {
								escreva("\n", nomePet, " ainda está com fome! Alimente-o(a) novamente! Fome em ", fome)
							} se (fome >= 4 e fome < 7) {
								escreva("\n", nomePet, " ainda está com um pouco de fome.. Vamos alimentá-lo(a) novamente? Fome em ", fome)
							} se (fome < 4) {
								escreva("\n", nomePet, " está está bem alimentado(a)! Fome em ", fome)
							}
						}
					} se (alimentar == 2){
						escreva("\nVocê decidiu não alimentar o(a) ", nomePet, "!")
						escreva("\nFome atual: ", fome)
					}
				escreva("\n--------------")
				} enquanto (fome >= 4 e felicidade > 0 e alimentar > 1)
			} se (menu == 3) {
				faca {
					//funcao jogar -> ao jogar caso haja empate a felicidade sobe em 1; caso o pet vença a felicidade sobe em 5; caso o pet perca a felicidade sobe em 3
					escreva("Oba! Então vamos jogar! Vamos jogar uma partida de Jokempô!\nAs regras são simples:\nPedra ganha da Tesoura; Papel ganha da Pedra; Tesoura ganha do Papel")
					escreva("\nAgora é sua vez! Escolha: (1) Pedra | (2) Papel | (3) Tesoura ")
	    				leia(numSelecionado)
	    				escreva("\n--------------\n")
	
	    				jokenpo = u.sorteia(1,3)
	
	    				se(numSelecionado > 0 e numSelecionado < 4){
	      				se (numSelecionado == jokenpo){
	        					escreva("Nossa! Nós empatamos haha, ninguém ganhou ou perdeu!")
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
							escreva("\n", nomePet, " está feliz! Felicidade em ", felicidade)
						} se (felicidade >= 4 e felicidade < 7) {
							escreva("\n", nomePet, " ainda está um pouco triste.. Felicidade em ", felicidade)
						} se (felicidade < 4) {
							escreva("\n", nomePet, " ainda está triste! Que tal jogarmos novamente? Felicidade em ", felicidade)
						}
	      			} senao {
	      				escreva("Você não escolheu corretamente! :(")
	    				}

	    				escreva("\n--------------")
				} enquanto (numSelecionado > 3)
  			} se (menu == 4) {
  				//funcao dar banho -> ao dar banho a limpeza chega a 10; caso esteja limpo perde 6 de felicidade
				escreva("Vamos dar banho no(a) ", nomePet, "? \n1 - Sim; 2 - Não ")
				leia(tomarBanho)

				se(tomarBanho == 1){
					se (limpeza >= 10){
						felicidade = felicidade - 6
						escreva("Você deu banho no(a) ", nomePet, ", mas ele(a) não estava sujo(a)!")

						se (felicidade > 0) {	
							escreva("Você deu banho no(a) ", nomePet, ", mas ele(a) não estava sujo(a)!")

							se (felicidade >= 7 ) {
								escreva("\nApesar disso, ", nomePet," ainda está feliz. Felicidade em ", felicidade)
							} se (felicidade >= 4 e felicidade < 7) {
								escreva("\n", nomePet, " acabou ficando um pouco triste.. Felicidade em ", felicidade)
							} se (felicidade < 4) {
								escreva("\n", nomePet, " ficou triste! Que tal jogarmos? Felicidade em ", felicidade)
							}
						}
					} se (limpeza < 10) {
						limpeza = 10
						escreva("Você deu banho no(a)", nomePet, "!") 
						escreva("\n", nomePet, " agora está limpo(a)! Limpeza em: ", limpeza)
					} 
				} se(tomarBanho == 2) { 
					escreva("\n", nomePet, " não tomou banho!")
				}
				escreva("\n--------------")																
  			} se (menu == 5) {
  				//funcao status -> apresenta cada status do pet ao jogador
  				se (tempoDia <= 1) {
					escreva("A idade de ", nomePet, " é ", tempoDia, " dia e ", tempoHora, " horas")
				} se (tempoDia > 1 e tempoDia < 7) {
					escreva("A idade de ", nomePet, " é ", tempoDia, " dias e ", tempoHora, " horas")
				} 

				se (limpeza >= 7 ) {
					escreva("\n", nomePet, " está limpo(a)! Limpeza em ", limpeza)
				} se (limpeza >= 4 e limpeza < 7) {
					escreva("\n", nomePet, " está ficando sujo(a).. Limpeza em ", limpeza)
				} se (limpeza < 4) {
					escreva("\n", nomePet, " está sujo(a)! Limpeza em ", limpeza)
				}

				se (felicidade >= 7 ) {
					escreva("\n", nomePet, " está feliz! Felicidade em ", felicidade)
				} se (felicidade >= 4 e felicidade < 7) {
					escreva("\n", nomePet, " está ficando triste.. Felicidade em ", felicidade)
				} se (felicidade < 4) {
					escreva("\n", nomePet, " está triste! Felicidade em ", felicidade)
				}
  				
  				se (fome >= 7 ) {
					escreva("\n", nomePet, " está com fome! Fome em ", fome)
				} se (fome >= 4 e fome < 7) {
					escreva("\n", nomePet, " está ficando com fome.. Fome em ", fome)
				} se (fome < 4) {
					escreva("\n", nomePet, " está está bem alimentado(a)! Fome em ", fome)
				}
				escreva("\n--------------")
  			}
		} enquanto (menu < 6 e felicidade > 0 e fome < 10 e limpeza > 0 e tempoDia < 7)
		//área de experiência e resultado do usuário
		se (menu == 6) {
			escreva("Poxa, que pena que você desligou o jogo.. Nos vemos depois!")
		} senao {
			se (felicidade <= 0) {
				felicidade = 0

				escreva("\nO coração de ", nomePet, " ficou triste por muito tempo… Ele sentia falta de atenção e carinho.\nDa próxima vez, tente passar mais tempo junto com ele.")
			}
			se (fome >= 10) {
				fome = 10

				escreva(nomePet, " ficou fraquinho demais… A falta de comida o fez perder as forças.\nLembre-se: cuidar é também alimentar.")
			}
			se (limpeza <= 0) {
				limpeza = 0

				escreva(nomePet, " acabou ficando doente por causa da sujeira… Ele tentou aguentar, mas o ambiente ficou pesado demais.\nLimpeza também é uma forma de cuidado.")
			}
			se (tempoDia == 7) {
				escreva(nomePet, " viveu uma vida longa e feliz ao seu lado. Ele se despede com um sorriso, agradecendo por todo o carinho.\nParabéns, você cuidou muito bem dele.")
			}
			escreva("\n--------------\n")
			escreva("Status final: ")
			escreva("Felicidade: ", felicidade, " | Fome: ", fome, " | Limpeza: ", limpeza)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4021; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
