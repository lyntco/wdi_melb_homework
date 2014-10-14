def find_anagram(input_word, array)

  array.each do |word|
    if input_word.chars.sort == word.chars.sort
      puts "#{word} is the Anagram for #{input_word}"
    else
      puts "#{word} is not found"
    end
  end

end

find_anagram("lilli", %w(enlists google inlets banana))