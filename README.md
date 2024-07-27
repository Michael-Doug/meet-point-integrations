# README

# MeetPoint

MeetPoint é uma aplicação web que ajuda você e seus amigos a encontrar lugares para sair juntos, como restaurantes, bares e outros pontos de encontro. A aplicação utiliza a API do Google Maps para encontrar lugares que são equidistantes para todos os participantes, facilitando a escolha de um local que seja conveniente para todos.

## Funcionalidades

- CRUD para gerenciar amigos e seus endereços.
- Geocodificação de endereços usando a gem `geocoder`.
- Integração com a API do Google Maps para exibir locais no mapa.
- Seleção de amigos para encontrar pontos de encontro próximos e equidistantes.

## Requisitos

- Ruby 3.2.2
- Rails 7.x
- PostgreSQL
- Yarn
- rbenv (para gerenciamento de versões do Ruby)

## Configuração Inicial

```bash
rbenv local 3.2.2
bundle install
yarn install
rails db:create
rails db:migrate
rails server
```
GOOGLE_MAPS_API_KEY=your_api_key_here

### 1. Clonar o Repositório

```bash
git clone git@github.com:Michael-Doug/meet-point-integrations.git
cd meet-point
```

## Contribuição
Contribuições são bem-vindas! Por favor, faça um fork do repositório e envie um pull request com suas melhorias.

## Licença
Este projeto está licenciado sob a Licença MIT. Consulte o arquivo LICENSE para obter mais informações.
