Rails.application.routes.draw do
  root to: 'homepage#index'

  get "/auth/:provider/callback", to: "users#create"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
