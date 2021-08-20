def substrings(string_to_find, dictionary)
  selected_strings = dictionary.select do |str| 
    string_to_find.include?(str) || str.include?(string_to_find)
  end
  p selected_strings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("i", dictionary)
