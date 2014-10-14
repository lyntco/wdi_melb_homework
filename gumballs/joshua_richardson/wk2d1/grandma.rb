class Grandma

  def talk(convo)

    counter = 1
    until counter == 3

      if convo == "BYE"
        puts "What's that honey, I didn't hear you.."
        counter = counter + 1
      elsif
        convo == convo.upcase
        puts "NO, NOT SINCE #{Random.rand(1930..1950)}"
      else
        puts "SPEAK UP SONNY JIM"
      end
      convo = gets.chomp
    end
  end

end


nanny = Grandma.new


puts "Speak to grandma...."

speak = gets.chomp
nanny.talk(speak)

