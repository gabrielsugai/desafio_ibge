<center><img src="https://i.imgur.com/qeK8SDQ.png"/></center>

<p align="center">
  <img src="https://img.shields.io/static/v1?label=Ruby&message=2.6.6&color=red&style=for-the-badge&logo=ruby"/>
</p>

> Status do Projeto: Em desenvolvimento :warning:

### Tópicos 

:small_blue_diamond: [Descrição do projeto](#descrição-do-projeto)

:small_blue_diamond: [Funcionalidades](#funcionalidades)

:small_blue_diamond: [Pré-requisitos](#pré-requisitos)

:small_blue_diamond: [Configurando a aplicação](#configurando-a-aplicação-arrow_forward)

:small_blue_diamond: [Utilizando a aplicação](#utilizando-a-aplicação-arrow_forward)

## Descrição do projeto 

<p allign="justify">Baseado na aplicação do IBGE <a href="https://censo2010.ibge.gov.br/nomes/#/search/response/235)">Nomes do Brasil</a> esse projeto traz um ranking interativo dos nomes mais utilizados no Brasil. Permitindo a busca dos nomes mais populares em todas as regiões do país. Essa aplicação também permite que você busque um ou mais nomes, para verificar a frequência dele no país no decorrer dos anos, sempre gerando tabelas organizadas para uma boa leitura.</p>

## Principais Gems utilizadas

:books: [**Rspec**](https://github.com/rspec/rspec) - Utilizado na criação dos testes da aplicação\
:books: [**Faraday**](https://github.com/lostisland/faraday) - Utilizado para facilitar as requisições HTTP na api do IBGE



## Funcionalidades

:heavy_check_mark: O usuário pode verificar o ranking de nomes mais populares em uma UF desejada, exibindo 3 tabelas: Ranking geral de nomes, ranking dos nomes femininos mais utilizados e ranking de nomes masculinos mais utilizados.

:heavy_check_mark: Similar a funcionalidade anterior, o usuário pode verificar o ranking de um município a sua escolha, informando o nome do município e a sigla do UF o sistema exibe 3 tabelas contendo o ranking geral de nomes, o ranking feminino e o masculino.

:heavy_check_mark: O usuário pode verificar a frequência de um ou mais nomes no decorrer das décadas, o sistema ao receber os nomes cria uma tabela onde as linhas são os períodos analisados, e as colunas são os dados referentes a cada nome informado.


## Pré-requisitos :package:

Algumas instalações serão necessárias antes de iniciar o projeto. 

:warning: [Ruby](https://www.ruby-lang.org/pt/documentation/installation/) versão >=2.6.6\
:warning: [Gem](https://rubygems.org/pages/download?locale=pt-BR) versão >=3.0.8\
:warning: [Bundle](https://bundler.io/man/bundle-install.1.html) versão >=1.17.3


## Configurando a aplicação :arrow_forward:

No terminal, clone o projeto: 

```
git clone https://github.com/gabrielsugai/desafio_ibge.git
```
Entre na pasta
```
cd desafio_ibge
```
Instale as dependencias e prepare o db
```
bin/setup
```


## Utilizando a aplicação :arrow_forward:

> Para realizar as pesquisas, basta seguir os seguintes passos:\
> 1 - Entre na pasta do projeto
```
$ cd desafio_ibge
```
> 2 - Execute o arquivo principal (***ibge.rb***, encontrado na pasta lib)
```
$ ruby lib/ibge.rb
```
> 3 - Ao executar a aplicação será exibido o seguinte menu:
```
Digite 1 para verificar o ranking de nomes de uma UF.
Digite 2 para verificar o ranking de nomes de um MU.
Digite 3 para verificar a frequencia de um nome ao decorer dos anos.
Digite 4 para sair.

```
> Agora basta escolher digitar o numero refente a opção desejada, e seguir os passos que a propria aplicação irá informar. :smile:

> :memo: Para verificar se os testes do projeto estão passando, basta executar:
```
$ cd desafio_ibg
$ rspec
```
> Ou
```
$ bundle exec rspec
```
