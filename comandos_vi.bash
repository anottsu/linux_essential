//  : PARA LINHA  DE COMANDO
// ESC   PARA ALTERNAR
: q (quit) //   sai do editor
: q! (quit) //   sai do editor sem salvar alterações
: x  //   sai do editor e salva alterações
: w copia_arquivo // salva o arquivo com outro nome
: 20 (numero) // te leva para a linha 20 passada como parâmetro
:s/string/STRING (sistema find and replace, usamos o :s/ "aqui colocamos a string que queremos substituir" / "AQUI COLOCAMOS A NOVA STRING")
:s/string /STRING/g (substitui todas as ocorrências na linha)
:%s/string/STRING/g (substitui todas as ocorrências no arquivo)

// NO ARQUIVO SEM USAR OS :

i (INSERT) //  serve para inserir palavras
r (REPLACE) // substitui um caracter e volta ao modo de navegação
11 dd // O dd recorta uma linha com o parametro passado( nesse caso recortará 11 linhas)-- é usado para apagar linhas
4 yy // copia uma linha com o parametro passado( nesse caso copiará 4 linhas)
gg    // volta para o ínicio do arquivo
G     // vai para o fim do arquivo
/ ssh (string de pesquisa) // pesquisa a string descrita, nesse caso ssh
p // Cola a string selecionada linha abaixo
P // Cola a string selecionada linha acima
u // desfaz o ultimo comando ()




EXEMPLO DE COMO RECORTAR OU COPIAR UMA STRING E COLAR

/ssh   // procura por ssh
dd      // recorta a string (poderiamos usa o yy para copiar uma ou mais strings)
gg  //volta para o inicio do arquivo (poderiamos usar aqui o :(número da linha)
P   //salva na linha acima do local que foi selecionado(poderiamos usar o "p" e salva na linha abaixo do local selecionado)
:w novo_arq.txt // salva uam copia do arquivo
:q  // fecha o Vim

