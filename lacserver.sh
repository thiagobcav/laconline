#!/bin/bash

echo '${RED}Atualizando pacotes$'
sudo apt-get update; apt-get upgrade &&

echo '${RED}Instalando recursos$'
sudo apt-get install screen; apt-get install unzip; apt-get install libc6-i386; apt-get install lib32stdc++6; apt-get install libncurses5:i386;

echo '${RED}Baixando arquivos necessários$'
sudo wget https://www.dropbox.com/s/83w5p2nwr7m4bp1/LAC_Linux_v1.5.8.zip?dl=1 -O LAC_Linux_v.1.5.8.zip

echo '${RED}Descompactando Arquivos$'
sudo unzip LAC_Linux_v1.5.8.zip;

echo '${RED}Ativando root$'
sudo chmod +x LAC_Linux_v1.5.8.x86_64;

echo '${RED}Criando diretórios$'
sudo mkdir .config; cd .config; mkdir unity3d; cd unity3d; mkdir MA; cd MA; mkdir LAC; cd;

echo '${RED}Criando Configurações do servidor$'
sudo mv ServerConfig.txt /root/.config/unity3d/MA/LAC;

echo '${RED}Editando Configurações do servidor$'
sudo cd; rm LAC_Linux_v1.5.8.zip; rm lacserver.sh;

echo '${RED}Fim da configuração$'
