class Say

  @@digit = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty)
  @@digit[0] = ""
  @@tens = %w(zero ten twenty thirty fourty fifty sixty seventy eighty ninety)
  @@tens[0] = ""

  def initialize(num)
    @num = num
  end

  def in_english
    #special cases
    i_num= @num.to_i
    if i_num==0
      return puts "zero"
    elsif i_num==100
      return puts "one hundred"
    elsif i_num < 0 || i_num > 100
      return puts "Number must be between 0 and 99, inclusive"
    elsif i_num < 21
      return puts @@digit[i_num] # handle nums 1-20
    end #end special cases

    txt = @num.to_s.split("").reverse # easier iteration thru reverse string
    res=[]
    place=0

    txt.each { |n|
      word = case place
      when 0
        @@digit[n.to_i]
      when 1
        if txt[0]=="0"
          @@tens[n.to_i]
        else
          @@tens[n.to_i] + "-"
        end
      end
      res <<  word 
      place += 1
    }
    puts res.reverse.join
  end

end



puts "-------------------------------------------------------"
Say.new(-1).in_english
(0...102).each{|i| Say.new(i).in_english}
