class ApplicationController < ActionController::Base

  #SQUARE
  def blank_square_form
    render({:template => "calc_temp/square_form.html.erb"})
  end

  def calc_square
    @num = params.fetch("user_input_sq").to_f
    @sq_num = @num ** 2

    render({:template => "calc_temp/square_result.html.erb"})
  end

  #RAND
  def blank_rand_form
     render({:template => "calc_temp/rand_form.html.erb"})
  end

  def calc_rand
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @rand = rand(@min..@max)

     render({:template => "calc_temp/rand_result.html.erb"})
  end

  #SQRT
  def blank_sqrt_form
    render({:template => "calc_temp/sqrt_form.html.erb"})
  end

  def calc_square
    @num = params.fetch("user_input_sqrt").to_f
    @sqrt_num = @num ** .5

    render({:template => "calc_temp/sqrt_result.html.erb"})
  end

  #PMT

  
  # def blank_square_form
  #   render({:template => "calc_temp/square_form.html.erb"})
  # end

end
