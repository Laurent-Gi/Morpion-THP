#Morpion with THP

> ----------------------------------------------------
> Author : Laurent Saives
> Date   : 23/07/2020
>
> In peer learning with : Régis & Paul-Marie
> ----------------------------------------------------

 Programme développé en Ruby  et  en  POO
 --------------------------- 
 
 Les gem utiles pour ce programme se trouvent dans le fichier Gemfile
 
 Si votre version de ruby est la bonne, il suffit d'executer la commande :
 $  bundle install
 pour que l'environnement soit prêt.
 
 Sinon, voyez avec RVM ou Rbenv pour que la ruby -v soit la même avant de relancer
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



## Gemfile

```
ruby '2.7.1'
source 'https://rubygems.org' do
  gem 'rubocop', '~> 0.88.0', require: false
  gem 'pry'
  gem 'rspec'
end
