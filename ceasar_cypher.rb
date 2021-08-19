def ceasar_cypher(string, rot)
  ord_arr = string.chars.map { |char| char.ord }
  resulting_arr = ord_arr.map do |ord|
    if ord > 97
        new_position = (ord - 97) + rot
        ord = ((ord - 97) + rot) % 26
        ord += 97
        ord.chr  
    else
      p "hei"
    end
  end
  resulting_arr.join
end
p ceasar_cypher("zzzz", 3)