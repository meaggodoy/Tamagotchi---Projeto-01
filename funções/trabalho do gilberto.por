programa
{	
	funcao inicio()
	{inteiro felicidade=5,limpeza=0
	inteiro tomarbanho
	faca{
	escreva("\nopição 4 - tomar banho:\n 1 - sim; 2 - nao\n ")
	leia(tomarbanho)
	
		
		
		se(tomarbanho ==1){
			limpeza= limpeza + 10
			escreva("seu pet estar com a limpeza em:",limpeza)
			se(limpeza>10)
			felicidade = felicidade - 6
			escreva("\na felicidade do pet é:,",felicidade)
			se(felicidade<=0)
			 escreva("\nseu pet morreu -_-")
		}se(tomarbanho ==2){
			escreva("seu pet nao quer tomar banho")
		
			}																
		}enquanto(tomarbanho == 1 e felicidade>=0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 552; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
