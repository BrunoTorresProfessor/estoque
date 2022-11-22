Algoritmo "Controle de Estoque"
 //Disciplina : Linguagem de Programação I
 //Professor  : Bruno Torres
 //Aluno      : Gabriel Barbosa do Amaral

//Versão 2

Var
   descricoes  :vetor [1..4] de caractere
   quantidades :vetor [1..4] de inteiro
   vendaqtt   :inteiro
   codItem    :inteiro
   opc,opc2   :caractere
   fimcad     :real
   icod       :inteiro
procedimento cadastro_item
//Responsável em cadastar um produto no vetor
//1-Produto a ser cadastrado

Inicio
   codItem <- codItem+1 //constante que dará o código ao produto
   escreval("**  Cadastro de produto  **")
   escreva ("Descrição :")
   leia(descricoes[codItem])
   escreva ("Quantidade :")
   leia(quantidades[codItem])
   limpatela
   //Abaixo irá mostrar o produto cadastrado e suas informações
   escreval()
   escreval()
   escreval ("Produto cadastrado :",descricoes[coditem])
   escreval ("Código :",coditem)
   escreval ("Quantidade :",quantidades[coditem])
   escreval()
   escreval ("Para visualizar o código novamente, imprima o relatório")
   escreval ("de produtos.")
   escreval()
   escreval("Pressione ENTER para voltar ao menu")
   leia(opc)
fimProcedimento

procedimento imprimir_produtos()//Responsável em exibir os dados dos produtos
Var
   i :inteiro
Inicio
   escreval("Você possui no estoque os seguintes itens: ")
   para i de 1 ate codItem faca //do primeiro até a quantidade já cadastrada
      escreval()
      escreval("Código :",i)
      escreval("Descrição : ",descricoes[i])
      escreval("Quantidade :",quantidades[i])
      escreval("------------------------------------------")
      escreval()
   fimpara
   escreva ("Pressione ENTER para voltar ao menu")
   leia(opc)
fimProcedimento

procedimento editar()
//Responsável em verificar qual produto vai se alterar, coletar os novos dados
//e solicitar o cadastro da alteração no vetor
Var
   novaQtd :inteiro
Inicio
   escreval("Insira o código do produto que deseja pesquisar: ")
   leia(icod)
   se (icod >=1) E (icod <= codItem) então //verificar se é um código válido
      escreval("Código :",icod) //o código é a posição no vetor!!!
      escreval("Descrição :",descricoes[icod])
      escreval("Quantidade :",quantidades[icod])
      escreval()
      escreval("Digite a nova quantidade do estoque, ou")
      escreval("caso não queira modificar, digite a quantidade atual.")
      leia(novaQtd)
      quantidades[icod]:=novaQtd //atualiza a quantidade caso tenha alteraçao
      escreval("O produto ",descricoes[icod]," agora possui ",quantidades[icod]," unidades")
      escreval()
      escreval("Pressione ENTER para continuar")
      leia (opc)
   fimse
fimprocedimento
fimalgoritmo
