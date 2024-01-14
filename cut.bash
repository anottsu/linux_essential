// CAMINHO DO ARQUIVO ATUAL:  USER/VAR/LOG

 cat syslog | grep systemd   // le todo arquivo systemd em syslog

//ARQUIVOS GRANDES PARA VISUALIZARMOS

 cat syslog | grep systemd | less // rolagem do arquivo com as setas

 cat syslog | grep systemd | wc // conta o numero de linhas, palavras e bytes

  -c, --bytes            mostra a quantidade de bytes
  -m, --chars            mostra a quantidade de caracteres
  -l, --lines            mostra a quantidade de linhas
      --files0-from=A     lê a entrada dos arquivos especificados pelos nomes
                           terminados com NULO contidos no arquivo A;
                           Se A for -, lê nomes da entrada padrão
  -L, --max-line-length  emite o comprimento da linha mais longa
  -w, --words            emite a quantidade de palavras

//  CRIANDO UM NOVO ARQUIVO COM OS LOGS SELECIONADOS
cat syslog | grep systemd   >> ~/Documentos/02-\ ALURA/08-\ shell\ Linux/labs/redirecionamento/logs_sysd.txt

// ACESSANDO O ARQUIVO E FILTRANDO

cat logs_sysd.txt | cut -d " " -f1 // cat (exibe o arquivo logs_sysd.txt) |(anexa mais um comando na linha) cut(corta um trecho do arquivo e exibe) -d " " (delimita qual será o parametro para o corte, nesse caso será o espaço " ") f1(indica a fração que será exibida no caso a primeira)--> OBSERVAÇÃO: podemos usar mais de uma fração (-f1,2,3,4,5,6,7,8,9)

// OUTRO MODO DE  EXIBIR EM FRACIONADO

cat logs_sysd.txt | cut -d " " -f6-9 // (DE F6 A F9) // melhor opção pois é mais limpa na tela

//OUTRO MODO DE EXIBIR FRACIONADO

 cat logs_sysd.txt | cut -d " " -f1-3,6- //(DE F1 ATE F3 3 DE F6 ATÉ O FIM)

// COMBINANDO COM MAIS COMANDOS E SALVANDO UMA COPIA

cat logs_sysd.txt | tail -20 | cut -d " " -f1-3,-6 | sort >> ~/Documentos/02-\ ALURA/08-\ shell\ Linux/labs/redirecionamento/logs_sysd03.txt

// ---- ATENÇÃO ----- LEMBRE DE FAZER UMA CÓPIA OU O ARQUIVO ORIGINAL PODE SER SOBRESCRITO





