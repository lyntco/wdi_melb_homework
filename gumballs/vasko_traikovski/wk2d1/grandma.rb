class Grandma

  def self.talk
    i='0'
    BYE_3 = 1
    until i == ""   #repeat until no input
      i = gets.chomp
      BYE_3   == (i !="BYE")? 1 : BYE_3 += 1 # hat-trick? reset : incr
      if i.upcase == i && i != "BYE"
        puts "NO, NOT SINCE #{rand(21) + 1930}"
        # (1930...1950).to_a.sample(1)
      elsif i == "BYE" && BYE_3 == 3
        puts "Bye, honey!"
        break
      elsif i == "BYE"
        puts "What's that honey, I didn't hear you.."
      else
        puts "SPEAK UP SONNY JIM!"
      end #if
    end #until
  end #def
end #class

puts "SAY HELLO TO GRANDMA, SONNYJIM"
Grandma.talk
# grandma = Grandma.new
# grandma.talk

