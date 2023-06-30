# Projeto kube-news

### Objetivo
O projeto Kube-news é uma aplicação escrita em NodeJS e tem como objetivo ser uma aplicação de exemplo pra trabalhar com o uso de containers.

### Configuração
Pra configurar a aplicação, é preciso ter um banco de dados Postgre e pra definir o acesso ao banco, configure as variáveis de ambiente abaixo:

DB_DATABASE => Nome do banco de dados que vai ser usado.

DB_USERNAME => Usuário do banco de dados.

DB_PASSWORD => Senha do usuário do banco de dados.

DB_HOST => Endereço do banco de dados.

### Docker Compose
Configurado com volumes para rodar no docker-compose sem a camada do k8s.

### Rodando em k8s local (k3d)
_mkdir -p C:/k3d/tmp/k3dvol_
_k3d cluster create devops --agents 2 -p "8080:30300@loadbalancer" --volume C:/k3d/tmp/k3dvol:/tmp/k3dvol_

No meu caso, escolhi usar um service "NodePort" e expor a porta 30300. No k3d configurei para a porta 8080 -> 30300.
Também estou utilizando um persistent volume em "C:/k3d/tmp/k3dvol:/tmp/k3dvol".