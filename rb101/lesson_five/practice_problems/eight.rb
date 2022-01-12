hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels ='aeiou'

hsh.each do |key, value| 
  value.each do |word|
   word.chars do |vowel|
    puts vowel if vowels.include?(vowel)
   end
   
  end
 
end
