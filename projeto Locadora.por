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
		
			escreva("\nDigite o nome do filme: ")
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
		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado\n")
		}senao{
			escreva("\n---- LISTA DE FILMES ----\n")
			para(quantidade = 0; quantidade < 10; quantidade++){
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
		}
		
	}

	funcao devolverFilme(){
		
	}

	funcao filmeMaisLocado(){

	}

	funcao buscarFilme(){
		
	}

	funcao atualizarDadosDoFilme(){
		
	}

	funcao estatisticasGerais(){
		
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
            	escreva("2 - Listar Filmes locados e disponíveis \n")
            	escreva("3 - Filmes locados\n")
            	escreva("4 - Alugar um filme\n")
            	escreva("5 - Devolver um filme\n")
            	escreva("6 - Filme mais locado\n")
            	escreva("7 - Buscar um filme pelo nome\n")
            	escreva("8 - Atualizar dados de um filme\n")
            	escreva("9 - Estatísticas gerais\n")
            	escreva("10 -  Sair do programa\n")
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
