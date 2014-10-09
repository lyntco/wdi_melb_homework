puts "Type to talk to Bob: "
input = gets.chomp
exit = false

while exit == false do
  puts "Say something else...."
  input = gets.chomp
  if input.include? '?'
    puts "Bob... 'Yeah what ever man'"
  elsif input.include? "."
    puts "Bob.... 'cool, bro"
    exit = false
  elsif input.upcase
    puts "WOAH, CHILL OUT MAN"
  elsif input == "Holla atcha lata"
    puts "Bob....'Laterz bruh'"
    exit = true
  end
end