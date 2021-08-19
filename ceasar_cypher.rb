def ceasar_cypher(string, rot)
  ord_arr = string.chars.map { |char| char.ord }
  resulting_arr = ord_arr.map do |ord|
    if ord > 90
      new_position = (ord - 97) + rot
      result = new_position % 26
      ord = result
    else
      result = (ord % 90)
      ord = result
    end
  end
  p resulting_arr
end

p ceasar_cypher("zzzz", 3)