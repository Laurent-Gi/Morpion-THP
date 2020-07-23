require 'bundler'
require "pry"
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
# Les classes dans lib/app :
require 'app/game'
require 'app/player'
require 'app/board'
require 'app/board_case'
# Les classes dans lib/views
require 'views/show'


# --------------------------------------------------------------------------------------
#
# On lance le jeu en créant un objet Application (une instance de la class Application),
# Et on commence par la méthode .perform qui va gérer le jeu (play and replay)
#
# --------------------------------------------------------------------------------------
class Application
  attr_accessor :players
  # Ici on a un tableau de 2 instances de Player
  def initialize
    @players = Array.new
    # Rien à faire ici
  end

  def display_welcom
    puts "-=" * 40
    puts "\n\n\n\n\n"
    puts "H e l l o   a n d   W e l c o m e   t o   y o u  !".center(80)
    puts "\n\n\n\n\n"
    puts "Today is the".center(80)
    puts "M O R P I O N 's".center(80)
    puts "day".center(80)
    puts "\n\n\n\n\n"
    puts "-=" * 40
  end


  # Création des deux jouers
  def ask_names
    puts "Player 1 (you play with the O), please, enter your name ?"
    print "> "
    @players << Player.new(STDIN.gets.chomp.to_s, "O")

    puts "Player 2 (you play with the X), please, enter your name ?"
    print "> "
    @players << Player.new(STDIN.gets.chomp.to_s, "X")
  end


  def game_over_display
    puts "-=" * 40
    puts "\n\n\n\n\n"
    puts "  G  A  M  E      O  V  E  R    !  !  !  !".center(80)
    puts "\n\n\n\n\n"
    puts "-=" * 40
  end


  def stop_game?(word="")
    puts "Would you like to play #{word} this funny game ? (y/n)"
    play = STDIN.gets.chomp.to_s
    return play != "y"
  end


  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    # 
    loop do
      display_welcom
      break if stop_game?
      ask_names
      Game.new.perform
      game_over_display
      break if stop_game?("again")
    end
  end
end

Application.new.perform
