def substrings(string_to_find, dictionary)
  case_insensitive_string = string_to_find.downcase
  result = Hash.new(0)
  
  dictionary.each do |word|
    matches = case_insensitive_string.scan(word).length
    result[word] = matches unless matches == 0
  end
  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
