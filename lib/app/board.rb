class Board
  attr_accessor :boardcase_array, :count_turn

  def initialize
    @boardcase_array = Array.new
    @count_turn = 0

    # ----------------------
    # création des 9 cases : 9 instances de la classe BoardCase
    # ----------------------
    @boardcase_array << BoardCase.new("a1", " ")
    @boardcase_array << BoardCase.new("b1", " ")
    @boardcase_array << BoardCase.new("c1", " ")
    @boardcase_array << BoardCase.new("a2", " ")
    @boardcase_array << BoardCase.new("b2", " ")
    @boardcase_array << BoardCase.new("c2", " ")
    @boardcase_array << BoardCase.new("a3", " ")
    @boardcase_array << BoardCase.new("b3", " ")
    @boardcase_array << BoardCase.new("c3", " ")

  end



  def write_on_case(str, str_type)
    # Le type sera "O", "X", et les str à retraiter "1a", "2a", "3c"

    # puts "Vous avez choisi de mettre un #{str_type} dans la case #{str}"

    @boardcase_array.each do |boardcase|
      if (boardcase.str_id == str || boardcase.str_id == str.reverse)
        if boardcase.str_value != " "
          return false
        else
          boardcase.str_value = str_type
        end
      end
    end
    @count_turn = @count_turn + 1
  end




  def victory #On teste toutes les combinaisons pour savoir si un jouer a gagné

    if @boardcase_array[0].str_value == "X"  && @boardcase_array[1].str_value == "X" && @boardcase_array[2].str_value == "X"
      return "X"
    elsif @boardcase_array[3].str_value == "X"  && @boardcase_array[4].str_value == "X" && @boardcase_array[5].str_value == "X"
      return "X"
    elsif @boardcase_array[6].str_value == "X"  && @boardcase_array[7].str_value == "X" && @boardcase_array[8].str_value == "X"
      return "X"  

    elsif @boardcase_array[0].str_value == "X"  && @boardcase_array[3].str_value == "X" && @boardcase_array[6].str_value == "X"
      return "X"
    elsif @boardcase_array[1].str_value == "X"  && @boardcase_array[4].str_value == "X" && @boardcase_array[7].str_value == "X"
      return "X"
    elsif @boardcase_array[2].str_value == "X"  && @boardcase_array[5].str_value == "X" && @boardcase_array[8].str_value == "X"
      return "X"

    elsif @boardcase_array[0].str_value == "X"  && @boardcase_array[4].str_value == "X" && @boardcase_array[8].str_value == "X"
      return "X"
    elsif @boardcase_array[2].str_value == "X"  && @boardcase_array[4].str_value == "X" && @boardcase_array[6].str_value == "X"
      return "X"

    elsif @boardcase_array[0].str_value == "O"  && @boardcase_array[1].str_value == "O" && @boardcase_array[2].str_value == "O"
      return "O"
    elsif @boardcase_array[3].str_value == "O"  && @boardcase_array[4].str_value == "O" && @boardcase_array[5].str_value == "O"
      return "O"
    elsif @boardcase_array[6].str_value == "O"  && @boardcase_array[7].str_value == "O" && @boardcase_array[8].str_value == "O"
      return "O"

    elsif @boardcase_array[0].str_value == "O"  && @boardcase_array[3].str_value == "O" && @boardcase_array[6].str_value == "O"
      return "O"
    elsif @boardcase_array[1].str_value == "O"  && @boardcase_array[4].str_value == "O" && @boardcase_array[7].str_value == "O"
      return "O"
    elsif @boardcase_array[2].str_value == "O"  && @boardcase_array[5].str_value == "O" && @boardcase_array[8].str_value == "O"
      return "O"

    elsif @boardcase_array[0].str_value == "O"  && @boardcase_array[4].str_value == "O" && @boardcase_array[8].str_value == "O"
      return "O"
    elsif @boardcase_array[2].str_value == "O"  && @boardcase_array[4].str_value == "O" && @boardcase_array[6].str_value == "O"
      return "O"

    elsif @count_turn == 9
      return "match nul"
    else 
      return "on going"
    end
  end

end
