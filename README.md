# Pokedex in Ruby on Rails

![Pokemon Logo](/logo/pokemon.png)

Things you can do:

* Show pokemons

* Create pokemons

* Edit pokemons

* Delete pokemons

## How to use this application

    git clone https://github.com/Kevingili/Pokedex-ruby.git

    cd Pokedex-ruby/

    bundle install

    rails db:migrate
  At this line may be you will get an error : Devise.secret_key was not set. Please add the following to your Devise initializer:

    config.secret_key = '244a7b9c0aef33237f386bbadff90b21e3e732a783101dc584e67ae2ee58407910280ab33ca3e7fd3fd9b5ceaa22db310839dbeb7052ed2b06e051f5b7d99ac7'

  To fix it you just need to put this content in config/initializers/devise.rb

  You need to do rails db:migrate again if you get this error

    rails s

  You need to create a first user with application

  After back in terminal and do

    rails console

    u = User.last
    u.add_role(:admin)
    exit

  Now your user can create/update/delete pokemons :)