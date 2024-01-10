// criaremos uma pasta chamada redirecionamento e copiaremos os arquivos da pasta service

mkdir redirecionamento // cria um diretorio chamado redirecionamento

cp /etc/services .   // cp(comando copy) /etc/services(origem da copia) .(destino da copia, nesse caso é o ponto que siginfica seu diretorio atual)

grep ssh services // traz o conteudo que contenha ssh em services

grep ssh services > listagem.txt // traz o conteudo que contenha ssh em services e copia para o arquivo listagem.txt

grep 3389  services >> listagem.txt // adiciona a busca 3389 em services e add ao arquivo listagem.txr

cat /etc/passwd | grep anottsu >> listagem-usuario // Pesquisa em passwd a palavra anottsu e salva no arquivo listagem usuario.
