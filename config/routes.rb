Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  namespace :reader do
    # root 'dashboard#index'
    resources :books
    resources :categories
    resources :dashboard
    resources :issues 
    get 'issues/return/:id' => "issues#return"

  end
  
  namespace :admin do
    # root 'dashboard#index'
    resources :books
    resources :categories
    resources :dashboard
    resources :issues
    get 'issues/approve/:id' => "issues#approve"
  end

  root 'home#index'

  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
