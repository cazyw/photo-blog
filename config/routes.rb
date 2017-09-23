Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  root :to => "posts#index"

  resources :posts
  resources :users, :only => [:index, :show]
  get 'users/:id/posts' => 'users#posts', :as => :user_posts
end
