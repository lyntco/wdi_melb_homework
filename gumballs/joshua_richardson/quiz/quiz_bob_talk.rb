puts "Type to talk to Bob: "
input = gets.chomp

until input == "Holla atcha lata"
  if input.include? '?'
    puts "Bob... 'Yeah what ever man'"

  elsif input.include? "."
    puts "Bob.... 'cool, bro"

  elsif input == input.upcase
    puts "WOAH, CHILL OUT MAN"

  end
  puts "............."
  input = gets.chomp
end

puts "Bob....'Laterz bruh'"