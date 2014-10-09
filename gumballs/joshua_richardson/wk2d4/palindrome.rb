require 'pry'

class String

  def is_palindrome?
      self.gsub!(" ", "")
    self == self.reverse
  end

end

palindrome_check = String.new

binding.pry