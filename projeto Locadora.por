programa
{
	funcao cadastrarFilme(){
			
	}
	
	funcao listarFilmes(){
		
	}

	funcao filmesLocados(){
		
	}

	funcao alugarFilme(){
		
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
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2604; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */