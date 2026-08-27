# Project: Sub Strings

# TODO: Implement the #substrings method

def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new) do | (substring, index), substrings_found |
    occurances = string.scan(/#{Regexp.escape(substring)}/i).length

    if occurances > 0
      substrings_found[substring] = occurances
    end
  end
end

if __FILE__ == $0
  print "Enter a list of valid substrings, separated by whitespace only: "
  dictionary = gets.chomp.split

  print "Enter a word or sentence: "
  string = gets.chomp

  puts substrings(string, dictionary)
end
