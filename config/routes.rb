Rails.application.routes.draw do
  devise_for :User
  root 'tasks#index'

  get 'persons/profile', as: 'user_root'

  resources :tasks do
    put :complete, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
