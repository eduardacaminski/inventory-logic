programa
{	funcao inteiro verificar(cadeia nomes[], cadeia nome, inteiro tam){
	inteiro pos=-1
	para (inteiro i=0;i<tam;i++){
		se(nome==nomes[i]){
			pos=i
		}
	}retorne pos
}

	funcao listar(cadeia nomes[], inteiro quant[], real valor[], cadeia fornecedor[], inteiro cont){
		inteiro op=-1
		para (inteiro i=0;i<cont;i++){
			se(valor[i]==0){
				escreva("não existem produtos")
				
			}
			senao{
			escreva ("nome:",nomes[i]," quantidade: ",quant[i]," valor: ", valor[i], " fornecedor: ", fornecedor[i])
			
		}
		}
	}
	funcao inteiro verif (cadeia nomes[], cadeia nome_alvo, inteiro tam){
		inteiro pos=-1
		para(inteiro i=0;i<tam;i++){
			se (nome_alvo==nomes[i]){
				pos=i
			}
		}retorne pos
	}
	
	funcao inicio()
	{	
		const inteiro tam=5
		cadeia nomes[tam], fornecedor[tam], nome_alvo
		real valor[tam], valorvendi, valortotal=0.0
		inteiro quant[tam], op=-1, aux, contaux=0, quantvendi, novaquant, contvendi=0
		enquanto(op!=0){
		escreva ("1- cadastrar produtos")
		escreva("2-listar produtos")
		escreva ("3-adicionar produto")
		escreva ("4-efetuar venda")
		escreva("5-excluir produto")
		escreva ("0-encerrar programa")
		leia (op)
		
		escolha(op){
			
			caso 1:
			para(inteiro i=0;i<5;i++){
				faca{
				escreva ("qual é o nome do produto a ser cadastrado")
				leia(nomes[i])
				aux=verificar(nomes,nomes[i],i)
				}enquanto (aux!=-1)
				escreva ("qual é a quantidade do produto?")
				leia(quant[i])
				escreva ("qual é o valor do produto?")
				leia(valor[i])
				escreva("qual é o fornecedor do produto?")
				leia(fornecedor[i])
				contaux++
				
				}pare
				
				

			caso 2:
			listar(nomes,quant,valor,fornecedor, contaux)
			
			pare
			
			caso 3:
			escreva ("qual é nome do produto?")
			leia(nome_alvo)
			aux=verif(nomes,nome_alvo,contaux)
			se(aux!=-1){
				escreva ("qual a nova quantidade do produto?")
				leia (quant[aux])
			
			}
			senao {
				escreva ("erro, produto não encontrado")
			
			}
			pare

			caso 4:
			escreva ("Qual é nome do produto a ser vendido?")
			leia(nome_alvo)
			aux=verif(nomes,nome_alvo,contaux)
			se(aux!=-1){
				escreva ("Qual é a quantidade a ser vendida?")
				leia (quantvendi)

				se(quantvendi>quant[aux]){
					escreva ("erro quantidade excedida")
					
				}
				senao{
					novaquant=quant[aux]-quantvendi
					valorvendi=valor[aux]*quantvendi
					quant[aux]=novaquant
					valortotal=valortotal+valorvendi
					escreva ("O valor da venda foi ", valorvendi)
					contvendi++
					
				}
			}
			senao {
				escreva ("erro, produto não encontrado")
				
			}
			pare

			caso 5:
			escreva ("Qual é o nome do produto a ser excluido?")
			leia (nome_alvo)
			aux=verif(nomes,nome_alvo,contaux)
			se(aux!=-1){
				se(quant[aux]==0){
					para (inteiro i=0;i<aux;i++){
						nomes[i]=nomes[i+1]
						quant[i]=quant[i+1]
						valor[i]=valor[i+1]
						fornecedor[i]=fornecedor[i+1]
						
					}
				}
			}
			pare
		}

		}
		se(op==0){
			para(inteiro i=0;i<tam;i++){
				escreva(" produto: ",nomes[i], " quantidade: ",quant[i])
			}
			escreva("o valor total das vendas foi",valortotal)
		}
	}
}
