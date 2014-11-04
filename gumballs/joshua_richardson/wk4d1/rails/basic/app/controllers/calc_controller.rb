class CalcController < ApplicationController

  def calculator()
    @num1 = params[:num1].to_f
    @num2 = params[:num2].to_f
    @operator = params[:operator]

    @calc_result = case @operator
      when '+' then @num1 + @num2
      when '-' then @num1 - @num2
      when '*' then @num1 * num2
    end
  end

end