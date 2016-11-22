Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy', as: :sign_out
  
  get 'sign_up' => 'users#new', as: :sign_up
  post 'sign_up' => 'users#create'
  
  root to: "pages#welcome"
end
