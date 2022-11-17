Rails.application.routes.draw do
  resources :web_employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "web_employees#index"
end
