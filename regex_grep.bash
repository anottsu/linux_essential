// VAMOS PROCURAR NO ARQUIVO WAMERICAN POR PALAVRAS ESPECIFICAS

//FAÇA UMA COPIA DO AQRQUIVO E ACESSE O LOCAL QUE SE ENCONTRA O ARQUIVO (VOU USAR O FIND PARA FACILITAR) A PESQUISA

find /usr -name *american* 

//FAZENDO UMA COPIA PARA O DIRETORIO ATUAL
cp /usr/share/dict/american-english . 

//VAMOS PROCURAR A PALAVRA COMPUTER NO ARQUIVO

cat american-english | grep - E "^computer" // cat(le o arquivo american-english) | (combina com o proximo comando) grep - E(pesquisa uma expressão regular) "^computer"(pesquisa todas as palavras que COMEÇAM COM A EXPRESSÃO COMPUTER)

cat american-english | grep - E "computer$" // cat(le o arquivo american-english) | (combina com o proximo comando) grep - E(pesquisa uma expressão regular) "computer$"(pesquisa todas as palavras que TERMINAM COM A EXPRESSÃO COMPUTER)

//                  *** PESQUISANDO EXATAMENTE UMA PALAVRA OU MAIS ***

cat american-english | egrep "^computer$"

cat american-english | egrep -i "^computer$" // outro modo ignorando maiusculas ou minusculas

cat american-english | egrep -i "^computer$|^zoo$" // pesquisa dois termos de uma vez ignorando letras maiusculas ou minusculas.

cat american-english | egrep -i "^...puter$" // PROCURA A  PALAVRA QUE TENHA 3 LETRAS E O SUFIXO PUTER // RESULTADO: COMPUTER.

cat american-english | egrep -i "^[cpjl]..puter$" // PROCURA A  PALAVRA QUE TENHA 3 LETRAS ONDE A PRIMEIRA PODE SER C,P,J,L  E O SUFIXO PUTER // RESULTADO: COMPUTER.

cat american-english | egrep -i "^[a-z]..puter$" // PROCURA A  PALAVRA QUE TENHA 3 LETRAS ONDE A PRIMEIRA PODE SER DE A ATÉ Z  E O SUFIXO PUTER // RESULTADO: COMPUTER.







