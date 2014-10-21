def find_anagram(word,list)
  found = false
  word2 = word.split('').sort.join
  list.each{ |t|
    list_word = t.split('').sort.join
    if word2 == list_word
      found = true
      puts "#{t} is the Anagram for #{word}"
    end
  }
  if !found
    puts "#{word} is not found"
  end
end



find_anagram("listen", %w(enlists google inlets banana))
#  = > "Inlets is the Anagram for Listen"
find_anagram("monkey", %w(enlists google inlets banana))
#  = > "Monkey is not found"
