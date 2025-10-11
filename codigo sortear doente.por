programa {

  inclua biblioteca Util --> u
  inteiro chanceCurar, chanceDoente, horasDoente = 0
  logico estaDoente = falso


  funcao inicio() {

    se(nao estaDoente){
      chanceDoente = u.sorteia(1,10)
        se(chanceDoente == 3){
        escreva("Seu Pet acabou ficando doente! :( \n ")
        estaDoente = verdadeiro
        horasDoente = 0
    }
  }
  horasDoente = horasDoente + 8
  escreva("\nSeu pet esta à, " ,horasDoente," horas doente")

  se(horasDoente == 8){
    chanceCurar = u.sorteia(1,3)
  }se(chanceCurar == 1){
    estaDoente = falso
    horasDoente = 0
    escreva("\nSeu pet esta Curado!!")
  }se(horasDoente == 16){
    chanceCurar = u.sorteia(1,3)
    se(chanceCurar <= 2){
      estaDoente = falso
      horasDoente = 0
      escreva("\nSeu pet esta Curado!!")
    }
  }se(horasDoente >= 24){
    estaDoente = falso
    horasDoente = 0 
    escreva("\nSeu pet esta Curado!!")
  }
  }
}



  
