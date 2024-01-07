// FORMATANDO SAIDA NA TELA 
 ESTAMOS NA PASTA LABS/FILTRANDO_CONTEUDO -->  QUE CONTÉM AS PASTAS SERVICES E PASSWD)

 cat passwd     // lê o arquivo passwd

 more passwd    // faz a paginação do arquivo, SPACE(rola a tela) E ENTER(linha a linha)
 B(back, volta um pagina) Q(quit, sai do arquivo)


 less passwd    // faz a paginação do arquivo, SPACE(rola a tela) E ENTER(linha a linha)
 B(back, volta um pagina) Q(quit, sai do arquivo) O LESS TEM A OPÇÃO DE UTILIZAR AS SETAS DIRECIONAIS PORTANTO ACABA SENDO MAIS UTILIZADO DO QUE O MORE

 tail /etc/passwd   //exibe as 10 ultimas linhas

 head /etc/passwd   //exibe as 10 primeiras linhas

 tail -n 3 /etc/passwd  //exibe as 3 ultimas linhas (o N e o 3 são os parâmetros). Funciona no head também
