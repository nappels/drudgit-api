FreelanceApi::Application.routes.draw do
  devise_for :users
  scope "/admin" do
    resources :users
  end

  root to: "clients#api"

  get 'clients/' => 'clients#index'

  post 'clients/' => 'clients#create'

end
