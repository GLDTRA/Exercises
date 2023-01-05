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

//Exercicio 4

programa {
  inclua biblioteca Matematica --> math
  funcao inicio() {
    real media=0, mediaV[10], notas[10][4] = {{4, 5, 8.7, 10}, {4, 6.7, 8, 2}, {9, 8.9, 6, 9}, {8.6, 5, 6, 8}, {4, 6, 4, 10}, {5.8, 7.8, 4.6, 7}, {5, 8, 9, 6}, {5, 6.3, 7, 8}, {9, 4.5, 10, 6}, {5, 6.7, 4, 1}}
    inteiro i, j, cont
    para(i = 0; i < 10; i++){
      para(j = 0; j < 4; j++){
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
