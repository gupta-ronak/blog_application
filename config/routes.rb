Rails.application.routes.draw do
  devise_for :accounts, controllers: {
    sessions: 'account/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "article#index"
  get "article/new", to: "article#new"
  post "/article", to: "article#create"
end
