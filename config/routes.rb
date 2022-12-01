Rails.application.routes.draw do
  resources :platforms
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/movies/:id/platform_count", to: "movies#platform_count"
end
