programa {
  
    inclua biblioteca Util --> u
    inteiro jokenpo, felicidade = 5

  funcao inicio() {

    inteiro numselecionado
    

    escreva("Vamos jogar um jogo!Ele se chama jokenpo, vou te passar as instruções.")
    escreva("\nVamos escolher pedra, papel ou tesoura.")
    escreva("\nPedra ganha de tesoura, papel ganha de pedra e tesoura ganha de papel.")
    escreva("\nPara escolher PEDRA digite (1), para escolher PAPEL digite (2) ou para escolher TESOURA digite (3).")
    escreva("\nVamos lá? Escolha agora!\n")
    leia(numselecionado)

    jokenpo = u.sorteia(1,3)

    se(numselecionado>0 e numselecionado<4){
      se(numselecionado == jokenpo){
        escreva("Nossa! Nos empatamos haha, ninguem ganhou ou perdeu! :/ ")
        felicidade=felicidade+1
      }senao se((numselecionado==1 e jokenpo==3) ou (numselecionado==2 e jokenpo==1) ou (numselecionado==3 e jokenpo==2)){
        escreva("Você ganhou e eu perdi! Você tem muita sorte haha")
        felicidade=felicidade+3
      }senao{
        escreva("Eu ganhei e você perdeu, haha! Sou incrivel")
        felicidade=felicidade+5
      }
      }senao{
      escreva("Você não escolheu corretamente! :(")
    }
      escreva("\nA minha felicidade agora é de: ",felicidade)
  }
}
