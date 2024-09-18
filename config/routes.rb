Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'

  resources :user_roles
  resources :user_addresses
  resources :leaves
  resources :employee_leaves
  resources :attendances
  resources :employee_attendances
  resources :salaries
  resources :employee_salaries
  resources :departments
  resources :employee_departments 
end
