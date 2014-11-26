class Atm

  def withdraw(amount)
    return false if amount == 0

    if amount % 5 == 0

      tens_cout = (amount / 10).floor
    else
      return false
    end
  end

end