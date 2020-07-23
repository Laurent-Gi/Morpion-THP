#Morpion with THP

> ----------------------------------------------------
> Author : Laurent Saives
> Date   : 23/07/2020
>
> In pair learning with : Paul-Marie Debrie
> ----------------------------------------------------

 Programme développé en Ruby  et  en  POO
 --------------------------- 
 
 Les gem utiles pour ce programme se trouvent dans le fichier Gemfile
 
 Si votre version de ruby est la bonne, il suffit d'executer la commande :
 $  bundle install
 pour que l'environnement soit prêt.
 
 Sinon, voyez avec RVM ou Rbenv pour que la "ruby -v" soit la même avant de relancer
  $ gem install bundler
 puis
  $ bundle install
 

## Organisation

Morpion-THP
│
├── lib
│   ├── app
│   │   ├── game.rb
│   │   ├── player.rb
│   │   ├── board.rb
│   │   └── boardcase.rb
│   │
│   └── views
│       └── show.rb
├── db
│   └── 
│
├── spec
│   ├── spec_helper.rb
│   ├── app_spec.rb
│   ├── app_game.rb
│   ├── app_player.rb
│   ├── app_board.rb
│   ├── app_boardcase.rb
│   └── app_show.rb
│
├── app.rb
│
├── README.md
│
├── Gemfile
├── Gemfile.lock
├── Autres fichiers (.env, .gitignore)
└── .rspec




## Contenu du fichier app.rb

  Il contient la classe application, chef d'orchestre de l'application.

  La commande unique mère se trouve après la classe :

#  Application.new.perform


## Classe Application:

#  initialize
# display_welcome
# ask_names
# game_over_display
# stop_game?
# perform


## Contenu du fichier game.rb

# game_end
# turn
# choose_case
# perform


## Contenu du fichier player.rb

# initialize


## Contenu du fichier board.rb

# initialize
# write_on_case
# victory?


## Contenu du fichier board.rb

# initialize


## Contenu du fichier board.rb

# initialize
# putcenter
# show_board




## Gemfile

```
ruby '2.7.1'
source 'https://rubygems.org' do
  gem 'rubocop', '~> 0.88.0', require: false
  gem 'pry'
  gem 'rspec'
end


gem lolize
require 'lolize'
require 'paint'                   │

       ┌── info ───────────────────────────┐
 J-_-L │ https://github.com/janlelis/paint │
       ├── usage ──────────────────────────┤
       │ require 'paint'                   │
       │ puts Paint['J-_-L', :red] # J-_-L │
       └───────────────────────────────────┘
