class Game
  attr_accessor :players, :current_player, :board, :status

  def initialize(players)
    @players = players            # Initialisé dans la classe Application
    @current_player = @players[0] # A la création, c'est le joueur 1 qui est current
    @board = Board.new
    @status = "on going"
  end


  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    puts "\n\n"
    puts " C'est la fin de la partie !".center(80)
    puts "\n\n"
    puts "-=" * 40

    if @status == "match nul"
      puts "Et c'est un match nul".center(80)
    elsif @status == "X"
      puts "\n\n"
      puts "Match remporté par #{@current_player.name} avec ses pions '#{@current_player.pawn_type}'".center(80)
      puts "\n\n"
    elsif @status == "O"
      puts "\n\n"
      puts "Match remporté par #{@current_player.name} avec ses pions '#{@current_player.pawn_type}'".center(80)
      puts "\n\n"
    elsif @status == "on going"
      puts "\n\n"
      puts "C'est une partie vraiment nulle 0-0 si ça arrive..."
      puts "\n\n"
    end

  end


  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board).
    #        Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.

    # 1/ On affiche le plateau :
    # --------------------------
    Show.new(@board).show_board


    while @board.count_turn <= 9


      @players.each do |player|


        # 2/ On demande au bon joueur de jouer (choose_case)
        # --------------------------------------------------
        @current_player = player
        choose_case(@current_player)

        # 3/ On vérifie le 'status' de la partie (Victoire, fin de partie ou "on going")
        # ------------------------------------------------------------------------------
        @status = @board.victory?


        # 1/ On affiche le plateau après le dernire coup du joueur :
        # ----------------------------------------------------------
        Show.new(@board).show_board

        # 4/ On passe au joueur suivant (While) ou on sort de la boucle selon le "status"
        # -------------------------------------------------------------------------------
        break if @status != "on going" # On sort de la boucle each sur les 2 joueurs

      end

    break if @status != "on going" # On sort de la boucle while sur les 9 tours

    end

    # Le jeu est terminé, donc on va afficher les résultats
    # -----------------------------------------------------

    game_end

  end



  def choose_case (player)

    if @status == "on going" # On peut s'en passer

      puts "#{player.name}, avec les pions '#{player.pawn_type}', c'est à toi de jouer !"
      puts "Entre la case que tu souhaites : a1, b2, c3..."
      print "> "

      loop do  # pour les erreurs de saisie !
        
        choix = STDIN.gets.chomp.to_s

        # J'accepte les inversions de chiffre-lettre
        #
        if ( choix.length == 2 && ( choix =~ /^[1-3][a-c]/ || choix =~ /^[a-c][1-3]/ ) )
          status = @board.write_on_case(choix, @current_player.pawn_type)
          (status != false) ? break : (puts "Cette case est déjà prise, choisissez-en une autre !")
        else
          puts "Merci de choisir une case qui correspond à la grille : a1 ou même 3b si vous voulez..."
        end
      end
    end
  end

  def perform
    puts "\n\n"
    puts "-="*40
    puts "\n\n"

    puts "Début de partie entre :"
    puts "-----------------------"
    puts "- #{@players[0].name} qui joue avec les #{@players[0].pawn_type}".rjust(80)
    puts "                 et".center(80)
    puts "- #{@players[1].name} qui joue avec les #{@players[1].pawn_type}".rjust(80)
    puts " "

    # 1 / La création du Board est déjà dans initialize

    # 2 / On commence à faire jouer chacun son tour :
    
    turn
    
  end

end
