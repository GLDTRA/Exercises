//Exercicio 1

programa {
  funcao inicio() {
    inteiro numero, parImpar
    escreva("Digite um numero:")
    leia(numero)
    parImpar = numero % 2
    se(parImpar == 1)
    escreva("Número:",numero," \né Impar e positivo")
    senao se (parImpar == -1)
    escreva("Número:",numero," \né Impar e negativo")
    senao se(parImpar == 0 e numero < 0)
    escreva("Número:",numero," \né Par e negativo")
    senao
    escreva("Número:",numero," \né Par e positivo")
  }
}

//Exercicio 2

programa {
  funcao inicio() {
    inteiro opcao, quantidade
    real preco, valorTotal
    escreva("Digite o codigo do produto:\n1 a 6:")
    leia(opcao)
    escreva("Digite quantos você quer:")
    leia(quantidade)
    escolha(opcao){
      caso 1:
        preco = 10
        valorTotal = preco * quantidade
        escreva("Produto: Cachorro quente\nValor total: R$ ", valorTotal)
        pare
      caso 2: 
        preco = 15
        valorTotal = preco * quantidade
        escreva("Produto: X-Salada\nValor total: R$ ", valorTotal)
        pare
      caso 3: 
        preco = 18
        valorTotal = preco * quantidade
        escreva("Produto: X-Bacon\nValor total: R$ ", valorTotal)
        pare
      caso 4:
        preco = 12
        valorTotal = preco * quantidade
        escreva("Produto: Bauru\nValor total: R$ ", valorTotal)
        pare
      caso 5: 
        preco = 8
        valorTotal = preco * quantidade
        escreva("Produto: Refrigrante\nValor total: R$ ", valorTotal)
        pare
      caso 6: 
        preco = 12
        valorTotal = preco * quantidade
        escreva("Produto: Suco de laranja\nValor total: R$ ", valorTotal)
        pare
      caso contrario: 
        escreva("Número inválido! Por favor digite um número como especificado.")
    }
  }
}

//Exercicio 3

programa {
  funcao inicio() {
    inteiro idade
    escreva("Digite a sua idade para a votação: ")
    leia(idade)
    se (idade < 16)
      escreva("Não está apto para votar :/")
    senao se (idade >= 16 e idade < 65)
      escreva("Está apta a votar e seu voto é obrigatório")
    senao se (idade >= 65)
      escreva("Está apta a votar , porém seu voto é facultativo")
  }
}

//Exercicio 4 

programa {
  inclua biblioteca Matematica --> math
  funcao inicio() {
    real salario, imposto
    escreva("Digite seu salário para a vericação de imposto de renda:")
    leia(salario)
    salario = math.arredondar(salario, 2)
    se(salario >= 0 e salario <= 2000.00)
      escreva("Você será Isento")
    senao se(salario > 2000 e salario <= 3000){
      imposto = salario * 0.08
      imposto = math.arredondar(imposto, 2)
      escreva("Imposto de renda:", imposto)
    }
    senao se(salario > 3000  e salario <= 4500){
      imposto = salario * 0.16
      imposto = math.arredondar(imposto, 2)
      escreva("Imposto de renda:", imposto)
    }
    senao se(salario > 4500){
      imposto = salario * 0.28
      imposto = math.arredondar(imposto, 2)
      escreva("Imposto de renda:", imposto)
    }
  }
}

//Exercicio 5

programa {
  funcao inicio() {
    cadeia vertebrado, tipagem, alimentacao
    escreva("Digite a opção desejada para a verificação de animal: \nVertebrado\nInvertebrado\n")
    leia(vertebrado)
    se(vertebrado == "Vertebrado" ou vertebrado == "vertebrado"){
      escreva("Digite a tipagem de animais entre as opções: \nAve\nMamífero\n")
      leia(tipagem)
      se(tipagem == "Ave" ou tipagem == "ave"){
        escreva("Digite tipo de alimentação entre as opções: \nCarnívoro\nOnívoro\n")
        leia(alimentacao)
        se(alimentacao == "Carnívoro" ou alimentacao == "carnívoro")
          escreva("Águia")
        senao(alimentacao == "Onívoro" ou alimentacao == "onívoro")
          escreva("Pomba")
        senao
          escreva("Alimentação inválida")
      }
      senao se(tipagem == "Mamífero" ou tipagem == "mamífero"){
        escreva("Digite tipo de alimentação entre as opções: \nOnívoro\nHerbívoro\n")
        leia(alimentacao)
        se(alimentacao == "Onívoro" ou alimentacao == "onívoro")
          escreva("Homem")
        senao se(alimentacao == "Herbívoro" ou alimentacao == "herbívoro")
          escreva("Vaca")
        senao
          escreva("Alimentação inválida")
        }
      senao 
        escreva("tipagem inválida")
      }
    senao se(vertebrado == "Invertebrado" ou vertebrado == "invertebrado"){
      escreva("Digite a tipagem de animais entre as opções: \nInseto\nAnelídeo\n")
      leia(tipagem)
      se(tipagem == "Inseto" ou tipagem == "inseto"){
        escreva("Digite tipo de alimentação entre as opções: \nHematófago\nHerbívoro\n")
        leia(alimentacao)
        se(alimentacao == "Hematófago" ou alimentacao == "hematófago")
          escreva("Pulga")
        senao se(alimentacao == "Herbívoro" ou alimentacao == "herbívoro")
          escreva("Lagarta")
        senao
          escreva("Alimentação inválida")
      }
      senao(tipagem == "Anelídeo" ou tipagem == "anelídeo"){
        escreva("Digite tipo de alimentação entre as opções: \nHematófago\nOnívoro\n")
        leia(alimentacao)
        se(alimentacao == "Hematófago" ou alimentacao == "hematafógo")
          escreva("Sanguessuga")
        senao se(alimentacao == "Onívoro" ou alimentacao == "onívoro")
        escreva("Minhoca")
        senao
          escreva("Alimentação inválida")
      }
      senao
        escreva("tipagem inválida")
    }
    senao
      escreva("Tipo vertebral inválido")
  }
}
