#Implement a method #substrings that takes a string as the first argument and then
#an array of valid substrings (your dictionary) as the second argument.
#It should return a hash listing each substring (case insensitive) that
#was found in the original string and how many times it was found.

def substrings(string, dict)
    hash = Hash.new
    string = string.downcase
    dict.each do |word|
      hash[word] = string.scan(word).length if string.include?(word)
    end
    hash
  end
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts (substrings('below', dictionary))
puts (substrings("Howdy partner, sit down! How's it going?", dictionary))