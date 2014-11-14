require 'pry'

class Phone

  def initialize(number)
    @number = number
    @number = @number.gsub(/[^0-9A-Za-z]/, '')
    @number = @number.gsub(/[.]/, '')
    checks
  end

  def checks
    if (@number.length == 11) && (@number[0] == '1')
      @number[0] = ''
    elsif (number.length == 11)
      @number = "0000000000"
    elsif (number.length == 9)
      @number = "0000000000"
    end
  end

  def number
    @number
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..10]}"
  end

end

