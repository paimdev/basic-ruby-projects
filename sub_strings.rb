def substrings(string_to_find, dictionary)
  selected_strings = dictionary.select do |str| 
    string_to_find.include?(str) || str.include?(string_to_find)
  end
  string_count = selected_strings.reduce(Hash.new(0)) do |result, string|
                   result[string] += 1
                   result
  end
  p string_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("down", dictionary)
