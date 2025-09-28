programa
{
	
	funcao inicio()
	{
	//função avançar tempo -> cada avanço representa 8 horas; 1 dia são 3 avanços; o pet vive por 7 dias
		inteiro avancarTempo, tempoHora = 0, tempoDia = 0

		faca {
			escreva("Avançar tempo? \n0 - não; 1 - Sim; 2 - Sair ")
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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 616; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */