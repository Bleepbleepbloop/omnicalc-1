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

  def calc_sqrt
    @num = params.fetch("user_input_sqrt").to_f
    @sqrt_num = @num ** 0.5

    render({:template => "calc_temp/sqrt_result.html.erb"})
  end

  #PMT
  def blank_pmt_form
    render({:template => "calc_temp/pmt_form.html.erb"})
  end

  def calc_pmt
    @rate = params.fetch("user_input_rate").to_f
    @n = params.fetch("user_input_years").to_f
    @m = @n * 12
    @principal = params.fetch("user_input_principal").to_f
    @pmt = (@principal * (@rate/@m))/(1-(1+@m)**(-1*@m))

    render({:template => "calc_temp/pmt_result.html.erb"})
  end

end
