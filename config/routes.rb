Rails.application.routes.draw do

 
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'toppages/index'
  get 'users/create'
  root to: 'toppages#index'
  
  resources :tasks
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
 
  get 'signup', to: 'tasks#index'
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks, only: [:create, :destroy]
  root to: 'tasks#index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
end
