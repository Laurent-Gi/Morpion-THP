class BoardCase
  attr_accessor :str_id, :str_value

  # str_value = string (character) "X", "O" ou " "... pratique pour écrire directement

  def initialize(id, value) 
    @str_id = id        # identifiant de la case a1, a2, a3, b1, b2, b3, c1, c2, c3.
    @str_value = value  # Le type, ça va être (vide " ", "X" ou "O")
  end

end