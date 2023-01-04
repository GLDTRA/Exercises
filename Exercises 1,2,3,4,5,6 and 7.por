//Exercicio 1

programa {
  funcao inicio() {
    inteiro num, cont, res
    cont = 0
    escreva("digite um numero de 1 a 10:")
    leia(num)
    se(num >= 0 e num <= 10){    
      enquanto(cont <= 10){
        res = cont * num
        escreva(num," x ",cont," = ",res,"\n")
        cont++
      }
    }
    senao
      escreva("Digite um número inteiro entre 1 e 10!")
  }
}

//Exercicio 2

programa {
  funcao inicio() {
    inteiro cont1, cont2, num1, num2
    escreva("1o numero: ")
    leia(num1)
    escreva("2o numero: ")
    leia(num2)
    cont2 = num2
    se (num1 < num2){
      para(cont1 = num1; cont1 <= cont2; cont1++){
        se(cont1 % 5 == 0){
          se(cont1 % 3 == 0)
            escreva(cont1, " é multiplo de 5 e 3\n")
          senao 
            escreva(cont1, " é multiplo de 5\n")
        }
        senao se(cont1 % 3 == 0){
          se(cont1 % 5 == 0){
            escreva(cont1, " é multiplo de 5 e 3\n")
          senao 
            escreva(cont1, " é multiplo de 3\n")
          }
        }
      }
    }
    senao 
      escreva("Intervalo inválido")
  }
}

//Exercicio 3

programa {
  funcao inicio() {
    inteiro num, cont, par=0, impar=0
    para(cont=1; cont <= 10; cont ++){
      escreva("Digite o ",cont,"o numero: ")
      leia(num)
      se(num%2==0)
        par++
      senao
        impar++
    }
    escreva("Total de números pares: ",par,"\nTotal de números ímpares: ",impar)
  }
}

//Exercicio 4

programa {
  funcao inicio() {
    inteiro idade=0, cont1=0, cont2=0
    enquanto(idade >= 0){
      escreva("Digite a sua idade: ")
      leia(idade)
      se(idade < 21 e idade >= 0 )
        cont1 += 1
      senao se(idade > 50)
        cont2 += 1
    }
    escreva("Total de pessoas menores de 21 anos: ",cont1,"\nTotal de pessoas maiores de 50 anos: ", cont2)
  }
}

//Exercicio 5

programa {
  funcao inicio() {
    inteiro idade , sexo, categoria, contBack=0, contMFront=0, contMobileMai40=0, contFSMen30=0
    cadeia opcao = "S"
    
    enquanto(opcao == "S"){
      escreva("Digite a sua idade: ")
      leia(idade)
      escreva("Digite o seu sexo: \n1 - Masculino\n2 - Feminino\n3 - Outros\n")
      leia(sexo)
      escreva("Digite a sua categoria: \n1 - Backend\n2 - Frontend\n3 - Mobile\n4 - FullStack\n")
      leia(categoria)
      se(categoria == 1)
        contBack++
      senao se(sexo == 2 e categoria == 2)
        contMFront++
      senao se(idade > 40 e sexo == 1 e categoria == 3)
        contMobileMai40++
      senao se(idade < 30 e sexo == 2 e categoria == 4)
        contFSMen30++
      escreva("Deseja continuar (S/N):")
      leia(opcao)
    }
  escreva("Total de pessoas desenvolvedoras Backend:",contBack,
  "\nTotal de mulheres desenvolvedoras Frontend:",contMFront,
  "\nTotal de homens desenvolvedores Mobile maiores de 40 anos:",contMobileMai40,
  "\nTotal de mulheres desenvolvedoras FullStack menores de 30 anos:",contFSMen30)
  }
}

//Exercicio 6

programa {
  funcao inicio() {
    inteiro num, cont
    cont = 0
    
    faca{
      escreva("Digite um numero:\n")
      leia(num)
      se(num > 0)
        cont += num
      senao se (num < 0)
        escreva("Número negativo!\n")
    } enquanto(num != 0)
    escreva("A soma dos números positivos é:", cont)
  }
}

//Exercicio 7

programa {
  funcao inicio() {
    inteiro num, cont=-1, soma=0
    real media
    faca{
      escreva("Digite um número:")
      leia(num)
      se(num%3==0){
        cont++
        soma += num
      }
    }enquanto(num != 0)
    media = soma / cont
    escreva("A média de todos os números múltiplos de 3 é: ",media)
  }
}

