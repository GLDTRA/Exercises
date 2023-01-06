//Exercicio 1

programa {
  funcao inicio() {
	inteiro vetorInteiros[10] = {19, 6, 3, 76, 7, 8, 9, 54, 12, 32}, j, i, copia, tamanho

	tamanho = 10

	para(i = 0; i < tamanho - 1; i++){
	para(j = 0; j < tamanho - 1 - i; j++){
		se(vetorInteiros[j] < vetorInteiros[j+1]){
		  copia = vetorInteiros[j]
		  vetorInteiros[j] = vetorInteiros[j+1]
		  vetorInteiros[j+1] = copia
		}
	}
	}
	escreva("vetor:")
	para(inteiro indice = 0; indice < tamanho; indice ++){
		escreva("  ",vetorInteiros[indice])
	}
  }
}

//Exercicio 2

programa {
  funcao inicio() {
    inteiro num[10], par[10], impar[10], contImpar=0, contPar=0, cont, soma=0
    real media
    para(cont = 0; cont < 10; cont++){
      escreva("Digite ",cont + 1,"o numero:\n")
      leia(num[cont])
      se(cont % 2 == 0){
        par[contPar] = num[cont]
        contPar++
      }
      senao se(cont % 2 == 1){
        impar[contImpar] = num[cont]
        contImpar++
      }
      soma += num[cont]
    }
  media = soma / 10
  escreva("Elementos nos índices ímpares: ")
  para(cont = 0; cont < 10; cont ++){
    escreva(impar[cont]," ")
  }
  
  escreva("\nElementos pares: ")
  para(cont = 0; cont < 10; cont ++){
    escreva(par[cont]," ")
  }
  escreva("\nSoma: ",soma,"\n")
  escreva("Media: ",media)
}

//Exercicio 3

programa {
  funcao inicio() {
    inteiro matrix[3][3], cont,  l, j, somaP=0, somaS=0
    escreva("Matrix 3x3:\nDigite 9 numeros:\n")
    para(l = 0; l < 3; l++){
      para(j = 0; j < 3; j++){
        leia(matrix[l][j])
      }
    }
    escreva("Elementos da Diagonal Principal:")
    para(cont = 0; cont < 3; cont++){
      escreva(" ", matrix[cont][cont])
      somaP += matrix[cont][cont]
    }
    escreva("\nElementos da Diagonal Secundário:")
    para(cont = 0; cont < 3; cont++){
      escreva(" ", matrix[cont][3 - 1 - cont])
      somaS += matrix[cont][3 - 1 - cont]
    }
    escreva("\nSoma dos Elementos da Diagonal Principal: ", somaP)
    escreva("\nSoma dos Elementos da Diagonal Secundária: ", somaS)
  }
}

//Exercicio 4

programa {
  inclua biblioteca Matematica --> math
  funcao inicio() {
    real media=0, mediaV[10], notas[10][4]
    inteiro i, j, cont
    para(i = 0; i < 10; i++){
      para(j = 0; j < 4; j++){
        leia(notas[i][j])
        media += notas[i][j]
      }
      media = math.arredondar(media/4, 1)
      mediaV[i] = media
      media = 0
    }
    escreva("Vetor:")
    para(cont = 0; cont < 10; cont ++){
      escreva("  ",mediaV[cont])
    }
  }
}
