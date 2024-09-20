#!/bin/bash

echo "Criando diretorios"

mkdir /publico
mkdir /dir1
mkdir /dir2
mkdir /dir3

echo "Criando grupos de usuarios"

groupadd GRP_NUM1
groupadd GRP_NUM2
groupadd GRP_NUM3

echo "Criando usuarios"

useradd user1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_NUM1
useradd user2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_NUM1
useradd user3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_NUM1

useradd user4 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_NUM2
useradd user5 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_NUM2
useradd user6 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_NUM2

useradd user7 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_NUM3
useradd user8 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_NUM3
useradd user9 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_NUM3

echo "Especificando as permissões dos diretórios"

chown root:GRP_NUM1 /dir1
chown root:GRP_NUM2 /dir2
chown root:GRP_NUM3 /dir3

chmod 770 /dir1
chmod 770 /dir2
chmod 770 /dir2
chmod 777 /publico
