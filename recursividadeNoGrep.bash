//              UTILIZANDO RECURSIVIDADE NO GREP

( ESTAMOS NA PASTA LABS/FILTRANDO_CONTEUDO -->  QUE CONTÉM AS PASTAS SERVICES E PASSWD)

mkdir teste // CRIA A PASTA TESTE

cd /teste  // entra na pasta teste

cp ../services services2 // copia do diretorio anterior(../ serve para isso) a pasta de origem(service) para a pasta de destino(services2)

cd ..    // retorna ao diretorio anterior

grep -r http * // procura recursivo (-r) http e exibe em services e services2  

grep -rl http * // procura recursivo (-r) e lista (-l) que http  esta dentro do arquivo em services e services2