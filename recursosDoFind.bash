// localizar arquivos no sistema usando o find

sudo find / -name *.conf    // sudo(root) find(comando) / (raiz do sistema) -name(nome do arquivo) *.conf(tudo que contenha .conf)

// AQUI PODEMOS LIMITAR A RECURSIVIDADE NAS PASTAS DIRECIONANDO A BUSCA PARA UM LUGAR EXATO SEM PERCORRER POR TODO SISTEMA

sudo find /etc -maxdepth 2 -iname *.conf    // sudo(root) find(comando) /etc (a partir da pasta etc) -maxdepth 2(no max 2 pastas de recursividade) -iname(nome do arquivo ignorando maiusculas ou minusculas) *.conf(tudo que contenha .conf)



//recursos do find - amin, atime, iname

PODEMOS PESQUISAR ARQUIVOS POR TEMPO DE CRIAÇÃO

find . -amin -5     // find(comando) . (do diretorio que está para frente) -amin(comando para horas) -5(parametro para 5 minutos)

// PESQUISA POR DIAS

find . -atime -2    // find(comando) . (do diretorio que está para frente) -atime(comando para dias) -2(parametro para 2 dias)
 
sudo find / -size +100M     // sudo(root) find(comando) / (raiz do sistema) -size(comando para o tamanho) +100M(parametro para arquivos maior de 100 megas)

sudo find / -size +3G     // sudo(root) find(comando) / (raiz do sistema) -size(comando para o tamanho) +3G(parametro para arquivos maior de 3 Gigas)

sudo find / -size 3G     // sudo(root) find(comando) / (raiz do sistema) -size(comando para o tamanho) 3G(parametro para arquivos de 3 Gigas EXATOS) SE ATENTAR AO +
 
ls -lh (lista o local especificado facilitando a leitura humana)

-iname(pesquisa o nome ignorando letras mauiusculas ou minusculas)