# Place your solution here

def is_anagram?(word1,word2)
    blank1 = ""
    blank2 = ""
    checkword1 = word1.downcase.split("").sort.each{|x| blank1 << x}
    checkword2 = word2.downcase.split("").sort.each{|x| blank2 << x}
    puts blank1 == blank2 ? true : false
end

puts is_anagram?('cinema', 'iceman') # => true
puts is_anagram?('iceman', 'cinema') # => true

# Pedantically, a word is always an anagram of itself.
# This is called being "reflexive," i.e., is_anagram?(word, word) == true for any word
puts is_anagram?('pants', 'pants') # => true

# is_anagram? should be case-insensitive
puts is_anagram?('CiNemA', 'iceman') # => true

# Notice: acres, cares, and scare are all anagrams of each other
puts is_anagram?('acres', 'cares') # => true
puts is_anagram?('cares', 'scare') # => true
puts is_anagram?('scare', 'acres') # => true

# The "words" don't need to be valid English words
puts is_anagram?('abcde2', 'c2abed') # => true

puts is_anagram?('pants', 'turtle') # => false
puts is_anagram?('123123', 'kjhasd') # => false