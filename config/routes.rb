Rails.application.routes.draw do
  resources :items
  resources :hello
  namespace :admin do
    resources :users
  end  


  get 'samubuc/index' => 'samubuc#index'
  get 'nyuuryoku/hyouji' => 'nyuuryoku#hyouji'
  get 'nyuuryoku/input' => 'nyuuryoku#input'
  post 'nyuuryoku/kakunin'=> 'nyuuryoku#kakunin'
  get 'nyuuryoku/practice'=> 'nyuuryoku#practice'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

