Rails.application.routes.draw do
  get("/", { :controller => "homelogics", :action => "home" })
  get("/square/new", { :controller => "squares", :action => "square" })
  get("/square/results", { :controller => "squares", :action => "result" })
  get("/square_root/new", { :controller => "roots", :action => "root" })
  get("/square_root/results", { :controller => "roots", :action => "result" })
  get("/payment/new", { :controller => "payments", :action => "pay" })
  get("/payment/results", { :controller => "payments", :action => "result" })
  get("/random/new", {:controller => "randoms", :action => "randomize"})
  get("/random/results", {:controller => "randoms", :action => "result"})
end
