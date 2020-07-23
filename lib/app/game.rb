class Game(players)
  attr_accessor :players, :current_player, :board, :status

  def initialize
    @players = players
    @current_player = Player.new
    # @board = Board.new
    # @status = nil
  end

  def perform
    puts "Début de partie entre :"
    puts "- #{@players[0].name} qui joue avec les #{@players[0].pawn_type}".rjust(80)
    puts "  et "
    puts "- #{@players[1].name} qui joue avec les #{@players[1].pawn_type}".rjust(80)
    puts " "
  end

end


# class Game
#   #TO DO : la classe a plusieurs attr_accessor:
#   #        - le current_player (égal à un objet Player),
#   #        - le status (en cours, nul ou un objet Player s'il gagne),
#   #        - le Board
#   #        - players = un array contenant les 2 joueurs.

#   def initialize
#     #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
#   end

#   def turn
#     #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
#   end

#   def new_round
#     # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
#   end

#   def game_end
#     # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
#   end    

# end