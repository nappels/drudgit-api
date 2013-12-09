FreelanceApi::Application.routes.draw do
  devise_for :users
  scope "/admin" do
    resources :users
  end

  devise_scope :user do
    get "/logout" => "devise/sessions#destroy"
  end

  get 'users/gravatar' => 'users#gravatar'

  get '/users.json', to: 'users#index', as: 'user_root'

  root to: "clients#api"

  get 'clients/' => 'clients#index'
  post 'clients/' => 'clients#create'


end
