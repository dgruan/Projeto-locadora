programa
{
	cadeia nomesFilmes[10]
	inteiro anosLancamentos[10], vezesLocado[10], quantidade = 0
	logico locado[10]//Verdadeiro = locado/ Falso = Disponivel 
	
	funcao filmesDisponiveis(){
		se(quantidade == 0){
			escreva("Nenhum filme cadastrado!\n")
			retorne
		}
		escreva("Filmes disponíveis: ")
		inteiro i
		para(i=0; i < quantidade; i++){
			se(locado[i] == falso){
				escreva(i, "- ", nomesFilmes[i], "\n")
			}
		}
	}
	
	funcao cadastrarFilme(){
		inteiro i
		se(quantidade >= 10){
			escreva("\nLimite Maximo atingido")
			retorne 
		}
		
			escreva("\nDigite o nome do filme (apenas minúsculas, sem acento): ")
			leia(nomesFilmes[quantidade])
			para(i=0;i<=quantidade-1;i++){
				se(nomesFilmes[i] == nomesFilmes[quantidade]){
					escreva("Filme já cadastrado!")
					retorne
				}
			}
			escreva("Digite o ano de lançamento: ")
			leia(anosLancamentos[quantidade])
			vezesLocado[quantidade] = 0
			locado[quantidade] = falso
			quantidade++
			escreva("Filme cadastrado com sucesso!")
	}
	
	funcao listarFilmes(){
		inteiro i
		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado\n")
		}senao{
			escreva("\n---- LISTA DE FILMES ----\n")
			para(i = 0; i < quantidade; i++){
				se(nomesFilmes[quantidade] == " "){	
				}
				 escreva("Nome do filme: ",nomesFilmes[quantidade], "\nData de lançamento: ", anosLancamentos[quantidade], "\nQuantidade de vezes que foi locado: ", vezesLocado[quantidade])
				 se(locado[quantidade]){
				 	escreva("\nLocado")
				 }senao{
				 	escreva("\nDisponivel")
				}
				 escreva("\n------------------------------------------\n")
			}
		}
	}

	funcao filmesLocados(){
		inteiro i
		se(quantidade == 0){
			escreva("Nenhum filme cadastrado!")
			retorne
		}
		escreva("Filmes locados")
		para(i=0; i < quantidade; i++){
			se(locado[i]){
				escreva(nomesFilmes[i], "\n")
			}
		}
	}

	funcao alugarFilme(){
		inteiro opcao
		se(quantidade == 0){
			escreva("Nenhum filme cadastrado!")
			retorne
		}
		escreva("Filmes disponíveis para locação")
		filmesDisponiveis()
		escreva("\nEscolha a opção do filme desejado (Numero): ")
		leia(opcao)
		se(opcao < 0 ou opcao >= quantidade){
			escreva("Opção Invalida")
			retorne
		}
		se(locado[opcao]){
			escreva("Filme já está locado")
			retorne
		}
		locado[opcao] = verdadeiro
		vezesLocado[opcao] = vezesLocado[opcao]+1
		escreva("Filme Locado com sucesso!")
	}

	funcao devolverFilme(){
		inteiro i, opcao
		logico temLocados = falso

		se(quantidade == 0){
			escreva("Nenhum filme cadastrado!")
			retorne
		}
		escreva("Filmes locados: ")
		para(i=0;i<quantidade;i++){
			se(locado[i]){
				escreva(i, "-", nomesFilmes[i],"\n")
				temLocados = verdadeiro
			}
		}
		se(temLocados==falso){
			escreva("Nenhum filme locado no momento")
			retorne
		}
		escreva("Escolha a opção que você deseja devolver (número):")
		leia(opcao)
		se(opcao<0 ou opcao>=quantidade){
			escreva("Opção inválida")
			retorne
		}
		se(locado[opcao] == falso){
			escreva("Esse filme não está mais locado")
			retorne
		}
		locado[opcao] = falso
		escreva("Filme devolvido com sucesso!")
	}

	funcao filmeMaisLocado(){
		inteiro i, indiceMaior=-1, maiorQuantidade=-1
		se(quantidade == 0){
			escreva("Nenhum filme cadastrado!")
			retorne
		}
		para(i=0;i<quantidade;i++){
			se(vezesLocado[i]>maiorQuantidade){
				maiorQuantidade = vezesLocado[i]
				indiceMaior= i
			}
		}
		escreva("Filme mais locado: ", nomesFilmes[indiceMaior])
		escreva("Ano de lançamento: ", anosLancamentos[indiceMaior])
		escreva("Quantidade de vezes locado: ", vezesLocado[indiceMaior])
		se(locado[indiceMaior]){
			escreva("Filme locado.")
		}
		escreva("Filme disponível.")
	}

	funcao buscarFilme(){
		cadeia nomeBusca
		inteiro i
		logico encontrado=falso
		se(quantidade == 0){
			escreva("Nenhum filme cadastrado!\n")
			retorne
		}
		escreva("Digite o nome do filme que você deseja encontrar (apenas minúsculas, sem acento): ")
		leia(nomeBusca)
		para(i=0;i<quantidade;i++){
			se(nomesFilmes[i]==nomeBusca){
				encontrado=verdadeiro
				escreva("\nFilme encontrado")
				escreva("Nome: ",nomesFilmes[i])
				escreva("Ano de lançamento: ",anosLancamentos[i])
				escreva("Quantidade de vezes locado: ",vezesLocado[i])
				se(locado[i]){
					escreva("Filme locado.")
					retorne
				}
				escreva("Filme disponível.")
				retorne
			}	
		}
		se(encontrado==falso){
			escreva("Filme não encontrado.")
		}
	}

	funcao atualizarDadosDoFilme(){
		cadeia novoNome
		inteiro i, j, k, novoAno, opcao, novaQuantidadeLocacoes
		logico novoStatus
		se(quantidade == 0){
			escreva("Nenhum filme cadastrado!")
			retorne
		}
		escreva("Atualizar dados do filme")
		escreva("Filmes cadastrados")
		para(i=0;i<quantidade;i++){
			escreva(i, "-", nomesFilmes[i])
		}
		escreva("Informe o número do filme que você deseja atualizar: ")
		leia(opcao)
		se(opcao<0 ou opcao>=quantidade){
			escreva("Opção inválida")
			retorne
		}
		escreva("Qual dado você deseja atualizar?")
		escreva("1-Nome")
		escreva("2-Ano de lançamento")
		escreva("3-Quantidade de vezes locado")
		escreva("4-Status (locado/disponível)")
		escreva("Escolha: ")
		leia(j)
		escolha(j){
			caso 1: 
			escreva("Escreva o novo nome do filme: ")
			leia(novoNome)
			nomesFilmes[opcao]=novoNome
			escreva("Nome atualizado com sucesso!")
			pare

			caso 2: 
			escreva("Escreva o novo ano do lançamento do filme: ")
			leia(novoAno)
			anosLancamentos[opcao]=novoAno
			escreva("Ano de lançamento atualizado com sucesso!")
			pare

			caso 3:
			escreva("Escreva a nova quantidade de vezes que o filme foi locado: ")
			leia(novaQuantidadeLocacoes)
			vezesLocado[opcao]=novaQuantidadeLocacoes
			escreva("Quantidade de locações atualizado com sucesso!")
			pare

			caso 4:
			escreva("Informe o novo status(1=Locado/2=Diponível): ")
			leia(k)
			se(k==1){
				locado[opcao]=verdadeiro
			}senao{
				locado[opcao]=falso
			}
			escreva("Status atualizado com sucesso!")
			pare

			caso contrario: 
			escreva("Opção inválida")
		}
	}

	funcao estatisticasGerais(){
		real taxaOcupacao
		inteiro i, totalLocados=0
		se(quantidade == 0){
			escreva("Nenhum filme cadastrado!")
			retorne
		}
		para(i=0;i<quantidade;i++){
			se(locado[i]){
				totalLocados++
			}
		}
		taxaOcupacao=(totalLocados*100.0)/quantidade
		escreva("Estatísticas gerais")
		escreva("Total de filmes cadastrados: ",quantidade)
		escreva("Total de filmes locados: ",totalLocados)
		escreva("Percentual de ocupação: ",taxaOcupacao, "%")
	}

	funcao sair(){
		escreva("Saindo...")
	}

	funcao apresentar(){
		
	}

	funcao menu(){
		inteiro opcao = 0
		enquanto (opcao != 10){
			escreva("\n---- MENU ----\n")
            	escreva("1 - Cadastrar um filme\n")
            	escreva("2 - Listar Filmes\n")
            	escreva("3 - Filmes locados\n")
            	escreva("4 - Alugar um filme\n")
            	escreva("5 - Devolver um filme\n")
            	escreva("6 - Filme mais locado\n")
            	escreva("7 - Buscar filme\n")
            	escreva("8 - Atualizar dados de um filme\n")
            	escreva("9 - Estatísticas gerais\n")
            	escreva("10 - Sair do programa\n")
            	escreva("Escolha uma opção: ")
            	leia(opcao)

            	escolha (opcao){
            		caso 1:
            		
            		cadastrarFilme()
            		
            		pare 

            		caso 2: 
            		
            		listarFilmes()
            		
				pare

				caso 3: 
				
				filmesLocados()
				
				pare

           		caso 4: 
           		
           		alugarFilme()
           		
           		pare

           		caso 5:
           		
           		devolverFilme()
           		
           		pare

           		caso 6: 
           		
           		filmeMaisLocado()
           		
           		pare

           		caso 7: 
           		
           		buscarFilme()
           		
           		pare

           		caso 8: 
           		
           		atualizarDadosDoFilme()
           		
           		pare

           		caso 9: 
           		
           		estatisticasGerais()
           		
           		pare

           		caso 10: 
           		sair()
           		pare

				caso contrario: 
				escreva("\nOpção invalida! Tente novamente.\n")
            	}
            	
		}
		
	}

	funcao menuPrincipal(){
		inteiro opcao = 0
		enquanto (opcao != 3){
			escreva("\n---- MENU PRINCIPAL ----\n")
			escreva("1 - Iniciar Programa\n")
			escreva("2 - Exibir Explicação\n")
			escreva("3 - Sair\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

			escolha(opcao){
				caso 1: 
				
				menu()
				
				pare

				caso 2:
				
				apresentar()
				
				pare

				caso 3:
				
				sair()
				
				pare

				caso contrario:
				
				escreva("\nOpção invalida! Tente novamente.\n")
			}
		}
	}
	
	funcao inicio()
	{
		menuPrincipal()
	}
}
