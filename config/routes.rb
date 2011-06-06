DeviseExample::Application.routes.draw do
  get "registrations/edit"

  resources :token_authentications, :only => [:create, :destroy]

  resources :deals

  devise_for :users, :admin

  resources :home, :only => :index
  resources :admins, :only => :index

  root :to => 'home#index'

  match '/token' => 'home#token', :as => :token
end
