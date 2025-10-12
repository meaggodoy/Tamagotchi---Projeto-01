programa
{
	
	funcao inicio()
	{
		inteiro fome = 5	
		inteiro felicidade = 10
		inteiro opcao

		escreva("A fome atual do pet é: ", fome)
		escreva("\nOpção 1: Alimentar o pet")
		escreva("\nOpção 2: Não alimentar o pet")
		escreva("\nDigite a opção desejada: ")
		leia(opcao)

		se (opcao == 1)
		
		se (fome > 0){
			fome = fome - 4

			se(fome < 0)
				fome = 0

				escreva ("\nVocê alimentou o pet!")
				escreva ("\nFome atual: ",fome)
				escreva("\nFelicidade atual: ", felicidade)
				
				}senao{
				felicidade = felicidade - 2

					escreva("\nO pet não queria comer e ficou triste...")
					escreva("\nFelicidade atual: ", felicidade)
				
				}se (opcao == 2){

					escreva("\nVocê decidiu não alimentar o pet!")
					escreva("\nFome atual: ", fome)
					escreva("\nFelicidade atual: ", felicidade)
				}

				
			
			
			
		
			
			

			
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 495; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
