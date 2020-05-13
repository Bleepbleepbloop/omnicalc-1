Rails.application.routes.draw do

  get("/square/new", {:controller => "application", :action => "blank_square_form"})
  get("/square/result", {:controller => "application", :action => "calc_square"})
  get("/random/new", {:controller => "application", :action => "blank_rand_form"})
  get("/random/result", {:controller => "application", :action => "calc_rand"})
  get("/sqrt/new", {:controller => "application", :action => "blank_sqrt_form"})
  get("/sqrt/result", {:controller => "application", :action => "calc_sqrt"})
  get("/pmt/new", {:controller => "application", :action => "pmt_form"})
  get("/pmt/result", {:controller => "application", :action => "calc_pmt"})
  
  



  # Write your routes above this line
  # =================================

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
