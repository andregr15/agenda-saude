# Agenda Saúde

**Agenda Saúde** é um projeto de código aberto desenvolvido de forma colaborativa para fornecer
um sistema de agendamento de vacinação e exames de COVID-19 para a prefeitura de Joinville.

> **master** Projeto original para agendamento de vacinação

> **master-covid** Fork para agendamento de exames de COVID-19

- [Dependências](#dependencias)
- [Desenvolvimento](#desenvolvimento)
- [Testes](#testes)
- [Style Guides](#style-guides)
- [Deploy](#deploy)

## Dependências

Este projeto usa o framework de desenvolvimento Web Ruby on Rails e possui as seguintes
dependências:

- Ruby >= 2.6.5
- Node >= 13.2.0
- PostgreSQL == 12.1
- Docker

## Desenvolvimento

Se você quiser executar este projeto no seu ambiente de desenvolvimento,
você deve clonar este código-fonte, compilá-lo e executá-lo localmente.

Existem duas formas de configurar o projeto no seu ambiente. Usando o
Docker Compose ou instalando manualmente as dependências.

**Usando o Docker Compose**

A forma mais fácil de executar este projeto no seu ambiente é usando o
Docker Compose, ferramenta responsável por criar um ambiente virtualizado e
instalar todas as outras dependências.

Depois de clonar o repositório, você pode executar o seguinte na pasta de origem:

```sh
docker-compose up
```

**Instalando as dependências manualmente**

Caso você queira instalar manualmente todas as dependências no seu ambiente, precisará
executar os seguintes comandos:

```sh
apt-get update
apt-get postgresql postgresql-contrib postgresql-server-dev-all cmake node libpq-dev
gem install bundler
```

Para instalar as bibliotecas e configurar o banco de dados execute:

```sh
bundle install
cp config/database.yml.example config/database.yml
bin/rails db:setup
```

E acesse no ambiente local [http://localhost:3000](http://localhost:3000):

```sh
bundle exec rails serve
```

## Testes

Para executar os testes da aplicação e verificar se tudo está funcionando como
esperado execute:

```sh
bundle exec rails test
```

E para verificar o estilo do código:

```sh
bundle exec rubocop
```

## Style Guides

- [Ruby style guide](https://github.com/bbatsov/ruby-style-guide)
- [Rails style guide](https://github.com/bbatsov/rails-style-guide)
- [JavaScript style guide](https://github.com/airbnb/javascript)

## Deploy

É necessário modificar os _remotes_ para refletir as duas aplicações na Heroku:

```sh
git remote set-url origin git@github.com:magrathealabs/agenda-saude-joinville.git
git remote add vacina https://git.heroku.com/agendamento-vacina.git
git remote add covid https://git.heroku.com/agendamento-covid.git
```

Deve ficar parecido com o exemplo abaixo:

``` sh
git remote -v
covid https://git.heroku.com/agendamento-covid.git (fetch)
covid https://git.heroku.com/agendamento-covid.git (push)
origin  git@github.com:magrathealabs/agenda-saude-joinville.git (fetch)
origin  git@github.com:magrathealabs/agenda-saude-joinville.git (push)
vacina  https://git.heroku.com/agendamento-vacina.git (fetch)
vacina  https://git.heroku.com/agendamento-vacina.git (push)
```

Para fazer deploy da branch da agenda de vacinação:

```sh
git push vacina master:master
```

Para fazer deploy da branch da agenda de covid:

```sh
git push covid master-covid:master
```
