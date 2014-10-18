class Bob

  def initialize
    @input = ""
  end

  def chat
    @input = gets.chomp
  end

  def question?
    @input.end_with?("?")
  end

end

bob = Bob.new
bob.chat





input = gets.chomp

def question?
  input.end_with?("?")
end

def statement?(input)
  input.length >0
end

def shouting?(input)
  !input.empty? && input.upcase == input
end