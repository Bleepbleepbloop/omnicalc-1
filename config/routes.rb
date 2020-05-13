Rails.application.routes.draw do

  get("/square/new", {:controller => "application", :action => "blank_square_form"})
  get("/square/result", {:controller => "application", :action => "calc_square"})
  
  get("/random/new", {:controller => "application", :action => "blank_rand_form"})
  get("/random/result", {:controller => "application", :action => "calc_rand"})
  
  get("/square_root/new", {:controller => "application", :action => "blank_sqrt_form"})
  get("/square_root/result", {:controller => "application", :action => "calc_sqrt"})
  
  get("/payment/new", {:controller => "application", :action => "blank_pmt_form"})
  get("/payment/result", {:controller => "application", :action => "calc_pmt"})
  
  



  # Write your routes above this line
  # =================================

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
