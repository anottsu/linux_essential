// criaremos uma pasta chamada redirecionamento e copiaremos os arquivos da pasta service

mkdir redirecionamento // cria um diretorio chamado redirecionamento

cp /etc/services .   // cp(comando copy) /etc/services(origem da copia) .(destino da copia, nesse caso é o ponto que siginfica seu diretorio atual)

grep ssh services // traz o conteudo que contenha ssh em services

grep ssh services > listagem.txt // CRIA O ARQUIVO listagem.txt, traz o conteudo que contenha ssh em services e copia para o arquivo listagem.txt 

*****OBSERVAÇÃO: O SINAL > CRIA ARQUIVOS E SOBRESCREVE, PORTANTO DAR PREFERENCIA A >> ******

grep 3389  services >> listagem.txt // adiciona a busca 3389 em services e add ao arquivo listagem.txT

cat /etc/passwd | grep anottsu >> listagem-usuario // Pesquisa em passwd a palavra anottsu e salva no arquivo listagem usuario.



//                       COMBINANDO OS COMANDOS COM O PIPE

grep ssh services >> copia_listagem.txt // CRIAMOS O ARQUIVO SE NÃO EXISTIR E COPIAMOS TUDO QUE TENHA SSH DE SERVICES PARA ELE
grep 3389 service >> copia_listagem.txt // CRIAMOS OS ARQUIVO SE NÃO EXISTIR E COPIAMOS TUDO QUE TENHA 3389 DE SERVICES PARA ELE.

cat copia_listagem.txt | sort >> copia_listagem_ordenada.txt // cat (traz o conteudo do arquivo ) | (faz a junção de mais um comando) sort(ordena os arquivos por ordem alfabetica) >>(faz uma cópia para o arquivo copia_listagem_ ordenada)

*** OBSERVAÇÃO: SE USARMOS >> PARA ADICIONAR O ARQUIVO COM O SORT  NELE MESMO, O RESULTADO SERÁ O ARQUIVO DUPLICADO, COM OS ARQUIVOS ORIGINAIS E OS MESMOS EM ORDEM ALFABÉTICA ***

// IMAGINA QUE PRECISAMOS ACESSAR OS 5 ULTIMOS ARQUIVOS DE LOGS ONDE TENHA SYSTEMD

tail -n 5 syslog | grep systemd | sort >> ~/Documentos/alura/linux/labs/redirecionamento/log5.txt(PEGAMOS AS ULTIMAS 5 LINHAS DO ARQUIVO DE LOG DO SYSLOG QUE CONTENHA SYSTEMD, DEPOIS CRIAMOS UM ARQUIVO CHAMADO LOG5.TXT EM ~/labs/redirecionamento )



