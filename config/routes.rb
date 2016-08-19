Rails.application.routes.draw do
  root to: "home#index"
  get "/math", to: "home#math"
end
