require 'pry'

class Phone
  def initialize(number)
    @number = number
  end

  def number
    if (@number.length == 11 && @number[0] == "1")
      @number[1..10]

      elsif @number.length == 10
        @number
      elsif (@number.gsub(/[^0-9]/i, '').length == 10)
        @number = @number.gsub(/[^0-9]/i, '')

      else
        "0000000000"
    end
  end

  def area_code
    # 7.times { @number.chop!}
    @number[0..2]
  end

  def to_s
    if @number.length == 10
        "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..-1]}"
    end
  end
end


