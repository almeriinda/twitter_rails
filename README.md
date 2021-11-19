# Instale o NVM e RVM
# Iniciando o projeto em ambiente local

git clone https://github.com/almeriinda/twitter_rails.git
# Instalando ruby, gems / instalando libs package / 

rvm install ruby-3.0.0
rvm use 3.0.0

cd twitter_rails
bundle install
yarn install
bin/webpack

# Configurando o banco da aplicação

cp .env.example .env

Obs: a aplicação foi gerada no banco postgres
Obs2: no arquivo .env, você deve colocar as credenciais e dados do banco de dados

# Disponível via Heroku
- Link: https://aqueous-harbor-40535.herokuapp.com/users/sign_in
