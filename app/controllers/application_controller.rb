class ApplicationController < ActionController::Base

  def blank_square_form
    render({:template => "calc_temp/square_form.html.erb"})
  end

  def calc_square
    @num = params.fetch("user_input_sq").to_f
    @sq_num = @num ** 2

    render({:template => "calc_temp/square_result.html.erb"})
  end

  # def blank_square_form
  #   render({:template => "calc_temp/square_form.html.erb"})
  # end

  # def blank_square_form
  #   render({:template => "calc_temp/square_form.html.erb"})
  # end

end
