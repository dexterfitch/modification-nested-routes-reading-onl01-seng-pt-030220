Rails.application.routes.draw do
  root 'posts#index'

  resources :authors, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new]
  end
  resources :posts
end
