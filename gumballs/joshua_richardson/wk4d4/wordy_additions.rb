class Calculator

  def ask(sentence)

    words = sentence.split(" ")

    if words[3] == "plus"
      number1 = words[2].to_i
      number2 = words[4].to_i
      sum = number1 + number2
      sum.to_i

    elsif words[3] == "minus"
      number1 = words[2].to_i
      number2 = words[4].to_i
      sum = number1 - number2
      sum.to_i

    elsif (words[3] == "times") && (words[4] == "by")
      number1 = words[2].to_i
      number2 = words[5].to_i
      sum = number1 * number2
      sum.to_i

    elsif words[3] == "times"
      number1 = words[2].to_i
      number2 = words[4].to_i
      sum = number1 * number2
      sum.to_i

    else
      number1 = words[2].to_i
      number2 = words[5].to_i
      sum = number1 / number2
      sum.to_i
    end

  end

end

c1 = Calculator.new
c1.ask("What is 2000000 divided by 250?")