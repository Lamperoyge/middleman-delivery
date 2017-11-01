Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :ratings, only: [:create]
    resources :dishes
  end
    resources :orders do
      resources :dishes
  end

end
