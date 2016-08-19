Rails.application.routes.draw do
  root to: "home#index"
  get "/credits", to: "home#credits"
  get "/math", to: "home#math"
  get "/test", to: "home#test"
end
