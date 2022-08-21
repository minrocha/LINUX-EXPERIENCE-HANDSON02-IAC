#!/bin/sh

echo "Verificando e instalando atualizações disponíveis para os pacotes instalados..."

apt-get update -y

echo "Atualizando o servidor..."

apt-get upgrade -y

echo "Instalando o Apache..."

apt install apache2 -y

echo "Instalando o unzip..."

apt install unzip -y

echo "Fazendo o download da aplicação a ser hospedada..."

cd /tmp/aplication
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."

unzip main.zip

echo "Abrindo dirtório criado na descompactação dos arquivos..."

cd linux-site-dio-main

echo "Copiando arquivos da aplicação para o diretório padrão do apache..."

cp -R * /var/www/html/
cd linux-site-dio


echo "Decompactando arquivos da aplicação..."
cd

