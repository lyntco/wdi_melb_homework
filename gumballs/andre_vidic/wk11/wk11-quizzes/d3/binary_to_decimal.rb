require 'pry'
class Converter

      def initialize
            @sum = 0
      end

      def convert(input)
            input.chars.reverse!.each_with_index do |number, index|
                if number == "1"       	
                    base = 2
                    @sum += base ** index
                end
            end
        @sum
      end
end
test1 = Converter.new.convert("1000")
