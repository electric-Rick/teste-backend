# Teste iCasei: Backend Junior/Pleno
Essa aplicação consiste em um cadastro de contatos, mantendo seus dados salvo e sincronizado em duas bases de dados distintas com uso de mensageria (kafka).

## Instruções
- Faça um fork desse projeto para a sua conta pessoal do GitHub.
- Siga as especificações abaixo.
- O link do repositório deverá ser enviado para o e-mail backend@icasei.com.br com o título **Teste Backend Junior/Pleno**

## Especificações tecnicas
- Ajustar a aplicação usando Ruby on Rails que contenha uma lista de contatos. ✔️
- Adicionar um novo campo (cpf/cnpj) no banco relacional utilizando migration e ajustar a mensageria com o novo campo ✔️
- Novo campo deve apenas aceitar números. ✔️
- Criar consumidor da mensageria (kafka) e salvar em um banco de dados não relacional ✔️
- Criar uma nova mensageria com o topico ('logs') com os seguintes dados (id, nome, email, sysdate)✔️
- Ajustar o docker-compose adicionando o banco não relacional✔️

## Obrigatório utilizar:
- Arquitetura microservicos com APIs RESTFUL
- Banco de dados relacional e no-sql
- Utilizar ferramenta de mensageria (DeliveryBoy e Racecar)
- Docker

## O que será avaliado?
- Organização do projeto
- Lógica do código
- Uso do Git
- Uso de componentização
