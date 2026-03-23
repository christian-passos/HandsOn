programa
{
  // Delcarando variáveis
    inteiro opcao, n_inteiro, valor_inteiro, valor_inteiro2, op_calculadora, opcao_caixa, categoria, contador_positivo = 0, contador_negativo = 0, contador_zero = 0 
    inteiro numero1, i, opcao_9 = 9, soma_9 = 0 , n, soma_regressiva
    cadeia tecla_enter
    real calc1, calc2, result, nota, valor_1 =0, maior_valor=0, menor_valor=100000, saldo=1000.0, valor_deposito, valor_compra, desconto, valor_desconto

	funcao inicio()
	{
    
		faca
		{
			limpa()
			escreva("------------------------------------------\n")
			escreva("----------- MENU DE EXERCÍCIOS ----------- \n") 
			escreva("------------------------------------------\n")
      escreva("Escolha uma das opções abaixo: \n")
      escreva("0. SAIR\n")
			escreva("1. IDENTIFICADOR PAR OU ÍMPAR \n") 
			escreva("2. IDENTIFICADOR DE MAIOR VALOR\n") 
			escreva("3. CALCULADORA\n") 
			escreva("4. VALIDADOR DE NOTA\n") 
			escreva("5. SENTINELA\n") 
      escreva("6. SIMULADOR DE CAIXA\n") 
      escreva("7. DESCONTO POR CATEGORIA\n") 
      escreva("8. CONTAGEM DE VALORES\n") 
      escreva("9. SOMA DE 1 ATÉ N\n") 
      escreva("10.CONTAGEM REGRESSIVA E SOMA \n") 
			escreva("-----------------------------------------\n")
			
			leia(opcao)

			escolha (opcao)
			{
				caso 1:
					limpa()
          escreva("----- IDENTIFICADOR PAR OU ÍMPAR -----\n")
          // SOLICITANDO INFORMAÇÃO DO USUÁRIO //
          escreva("Digite um número inteiro: ")
          leia(n_inteiro)
           // REALIZANDO OPERAÇÃO //
          se(n_inteiro % 2 == 0){
          escreva("O número ", n_inteiro, " é PAR")                         // Retornando resultado para o usuário //
          }
          senao{
          escreva("O número ", n_inteiro, " é ÍMPAR")                       // Retornando resultado para o usuário //
          }

          // FIM DO CÓDIGO //
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					pare

				caso 2:
					limpa()

				escreva("----- IDENTIFICADOR DE MAIOR NÚMERO -----\n")
          // SOLICITANDO INFORMAÇÃO DO USUÁRIO //
          escreva("Digite um número inteiro: ")
          leia(valor_inteiro)
          escreva("Digite mais um número: ")
          leia(valor_inteiro2)

          // REALIZANDO OPERAÇÃO //
          se(valor_inteiro > valor_inteiro2){
            escreva("O numéro maior é: ", valor_inteiro)                       // Retornando resultado para o usuário //
          }
          se(valor_inteiro2 > valor_inteiro){
            escreva("O numéro maior é: ", valor_inteiro2)                      // Retornando resultado para o usuário //
          }
          se(valor_inteiro == valor_inteiro2){
            escreva("Ambos os valores são iguais")                             // Retornando resultado para o usuário //
          }
          // FIM DO CÓDIGO //
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					pare

				caso 3:
					limpa()
        // SOLICITANDO INFORMAÇÃO DO USUÁRIO //
        escreva("----- CALCULADORA -----\n")
        escreva("Escolha uma opção: \n")
        escreva("1- Soma \n")
        escreva("2- Subtração \n")
        escreva("3- Multiplicação \n")
        escreva("4- Divisão \n")
        escreva("-----------------------\n")
        leia(op_calculadora)

        escolha (op_calculadora)
        {
          caso 1:
          limpa()

          // SOLICITANDO INFORMAÇÃO DO USUÁRIO //
					escreva("Insira o primeiro valor: ")
          leia(calc1)
          escreva("Insira o segundo valor: ")
          leia(calc2)

          // REALIZANDO OPERAÇÃO //
          result = calc1 + calc2                      // Retornando resultado para o usuário //

          escreva("O resultado é: ", result)

          pare
        
          caso 2:
          limpa()

          // SOLICITANDO INFORMAÇÃO DO USUÁRIO //
					escreva("Insira o primeiro valor: ")
          leia(calc1)
          escreva("Insira o segundo valor: ")
          leia(calc2)

          // REALIZANDO OPERAÇÃO //
          result = calc1 - calc2                      // Retornando resultado para o usuário //

          escreva("O resultado é: ", result)
          pare

          caso 3:
          limpa()

          // SOLICITANDO INFORMAÇÃO DO USUÁRIO //
					escreva("Insira o primeiro valor: ")
          leia(calc1)
          escreva("Insira o segundo valor: ")
          leia(calc2)

          // REALIZANDO OPERAÇÃO //
          result = calc1 * calc2

          escreva("O resultado é: ", result)                      // Retornando resultado para o usuário //
          pare

          caso 4:
          limpa()

          // SOLICITANDO INFORMAÇÃO DO USUÁRIO //
					escreva("Insira o primeiro valor: ")
          leia(calc1)
          escreva("Insira o segundo valor: ")
          leia(calc2)

          // REALIZANDO OPERAÇÃO //
          se(calc1 >0 e calc2 >0){
          result = calc1 / calc2
          escreva("O resultado é: ", result)                      // Retornando resultado para o usuário //
          }
          senao{
            escreva("Erro de operação")
          }
          pare
        }
          // FIM DO CÓDIGO //
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					
				caso 4:
					limpa()
          // SOLICITANDO INFORMAÇÃO AO USUÁRIO //
          escreva("----- VALIDADOR DE ENTRADA -----\n")
          escreva("\nDigite uma nota: ")
          leia(nota)

          // REALIZANDO OPERAÇÃO //
          enquanto(nota <0 ou nota >100){
            escreva("Digite uma nota: ")
            leia(nota)
          }
					escreva("A nota digitada foi: " , nota)                      // Retornando resultado para o usuário //

          // FIM DO CÓDIGO //
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					pare

				caso 5:
					limpa()
          // SOLICITANDO INFORMAÇÃO AO USUÁRIO //
          escreva("----- SENTINELA (PARANDO NO 0) -----\n")
          escreva("Insira um número ou 0 para encerrar: ")
          leia(valor_1)

          // REALIZANDO OPERAÇÃO //
          enquanto(valor_1 !=0){
            
            se(valor_1 > maior_valor){
            maior_valor = valor_1
          }
            se(valor_1 < menor_valor){
            menor_valor = valor_1
          }
            escreva("Insira um número ou 0 para encerrar: ")
            leia(valor_1)
          }
					escreva("Maior valor digitado foi: " , maior_valor)                      // Retornando resultado para o usuário //
          escreva("\nMenor valor digitado foi: ", menor_valor                      // Retornando resultado para o usuário //
          )
          // FIM DO CÓDIGO //
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					pare

        caso 6:
					limpa()
          // SOLICITANDO INFORMAÇÃO AO USUÁRIO //
          escreva("----- SIMULADOR DE CAIXA -----\n")
          escreva("\nSaldo atual: R$ ", saldo, "\n")
          
          // REALIZANDO OPERAÇÃO //
				  opcao_caixa = 0
				  enquanto (opcao_caixa != 4)
				  {
					escreva("\n1-Depositar \n2-Sacar \n3-Ver saldo \n4-Sair\n")
					escreva("Opcao: ")
					leia(opcao_caixa)
					se (opcao_caixa == 1)
					{
						escreva("Insira o valor a depositar: ")
						leia(valor_deposito)
						se (valor_deposito > 0.0)
						{
							saldo = saldo + valor_deposito
							escreva("Depósito realizado!\n")                      // Retornando resultado para o usuário //
						}
						senao
						{
							escreva("Valor inválido.\n")                          // Retornando resultado para o usuário //
						}
					}
					se (opcao_caixa == 2)
					{
						escreva("Insira o valor a sacar: ")
						leia(valor_deposito)
						se (valor_deposito > 0.0 e valor_deposito <= saldo)
						{
							saldo = saldo - valor_deposito
							escreva("Saque realizado!\n")                        // Retornando resultado para o usuário //
						}
						senao se (valor_deposito <= 0.0)
						{
							escreva("Valor inválido.\n")                         // Retornando resultado para o usuário //
						}
						senao
						{
							escreva("Saldo insuficiente!\n")                     // Retornando resultado para o usuário //
						}
				  	}
				  	se (opcao_caixa == 3)
				  	{
						escreva("Saldo: R$ ", saldo, "\n")                    // Retornando resultado para o usuário //
				  	}
			    	}
			    	escreva("Saldo final: R$ ", saldo, "\n")              // Retornando resultado para o usuário //
					
          // FIM DO CÓDIGO //
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					pare

          caso 7:
					limpa()
          // SOLICITANDO INFORMAÇÃO AO USUÁRIO //
          escreva("----- DESCONTO POR CATEGORIA -----\n")
					escreva("\nValor da compra: ")
			  	leia(valor_compra)
			  	escreva("Insira a categoria do cliente:\n1- Comum \n2- Premium \n3- Funcionário ")
			  	leia(categoria)

          // REALIZANDO OPERAÇÃO //
			  	desconto = 0.0
			  	se (categoria == 1)
		  		{
					desconto = valor_compra * 0.05
		  		}
		  		se (categoria == 2)
		  		{
					desconto = valor_compra * 0.10
		  		}
		  		se (categoria == 3)
		  		{
					desconto = valor_compra * 0.15
		  		}
		  		se (categoria >= 1 e categoria <= 3)
		  		{
					valor_desconto = valor_compra - desconto
					escreva("Desconto: R$ ", desconto, "\n")              // Retornando resultado para o usuário //
					escreva("Total: R$ ", valor_desconto, "\n")           // Retornando resultado para o usuário //
		  		}
	  			senao
		  		{
					escreva("Categoria inválida!\n")                      // Retornando resultado para o usuário //
		  		}
					
          // FIM DO CÓDIGO //
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					pare

          caso 8:
					limpa()
          // SOLICITANDO INFORMAÇÃO AO USUÁRIO //
          escreva("----- CONTAGEM DE VALORES -----\n")

				  // DEFININDO CONTADORES //
          para (i = 1; i <= 10; i++)
			  	{
          // REALIZANDO OPERAÇÃO //
					escreva("Numero ", i, ": ")
					leia(numero1)
					se (numero1 > 0)
					{
						contador_positivo = contador_positivo + 1
					}
					senao se (numero1 < 0)
					{
						contador_negativo = contador_negativo + 1
					}
					senao
					{
						contador_zero = contador_zero + 1
					}
			  	}
          limpa()
			  	escreva("Positivos: ", contador_positivo, "\n")                      // Retornando resultado para o usuário //
			  	escreva("Negativos: ", contador_negativo, "\n")                      // Retornando resultado para o usuário //
			  	escreva("Zeros: ", contador_zero, "\n")                              // Retornando resultado para o usuário //
					
          // FIM DO CÓDIGO //
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					pare

          caso 9:
					limpa()
          // SOLICITANDO INFORMAÇÃO AO USUÁRIO //
          escreva("----- SOMA DE 1 ATÉ N -----\n")
					se (opcao_9 == 9)
			    {
	  			soma_9 = 0
	  			escreva("Digite N: ")
	  			leia(n)
		  		se (n > 0)
			  	{
          // DEFININDO CONTADORES //
					para (i = 1; i <= n; i++)
					{
          // REALIZANDO OPERAÇÃO //
						soma_9 = soma_9 + i
					}
					escreva("Soma de 1 ate ", n, ": ", soma_9, "\n")                              // Retornando resultado para o usuário //
	  			}
	  			senao
  				{
					escreva("N deve ser positivo.\n")                                            // Retornando resultado para o usuário //
					}
          }
          // FIM DO CÓDIGO //
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					pare

          caso 10:
					limpa()
          // SOLICITANDO INFORMAÇÃO AO USUÁRIO //
          escreva("----- CONTAGEM REGRESSIVA E SOMA -----\n")
					soma_regressiva = 0
			  	escreva("Digite N: ")
			  	leia(n)
			  	se (n > 0)
		  		{
          // DEFININDO CONTADORES //
			  	para (i = n; i >= 1; i--)
					{
          // REALIZANDO OPERAÇÃO //
					escreva(i, " ")
					soma_regressiva = soma_regressiva + i
					}
					escreva("\nSoma total: ", soma_regressiva, "\n")                              // Retornando resultado para o usuário //
			  	}
			  	senao
			  	{
					escreva("N deve ser positivo.\n")                                            // Retornando resultado para o usuário //
		  		}
          // FIM DO CÓDIGO //
      
			se (opcao == 0)
			{
				escreva("Programa Encerrado!\n")
			}

			se (opcao < 0 ou opcao > 10)
			{
				escreva("Opcao inválida!\n")
			}
					
					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_enter)
					pare
          
				caso 0:
					escreva("Programa Encerrado\n")
					pare

				caso contrario:
					escreva("Opção inválida!\n")
					escreva("\nPressione ENTER para continuar...")
					leia(tecla_enter)
					pare
			}
		} enquanto (opcao != 0)
	}
}