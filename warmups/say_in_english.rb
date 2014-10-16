class Say

  def initialize(n)
    @number = n
  end

  def small_number(n)
    %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
  end

  def big_number
    (@number % 10).zero? ? tens((@number / 10)-2) : "#{tens((@number / 10)-2)}-#{small_number(@number % 10)}"
  end

  def tens(n)
    %w(twenty thirty forty fifty sixty seventy eighty ninety)[n]
  end

  def in_english
    raise ArgumentError, "Number must be between 0 and 99, inclusive." unless (0..99).include? @number
    ((0..19).include? @number) ? small_number(@number) : big_number
  end
end

p Say.new(19).in_english
p Say.new(22).in_english
p Say.new(50).in_english
p Say.new(99).in_english
# p Say.new(-1).in_english


