Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'homes/about'
  resources :users, only: %i(show edit update index) do
    resource :relationships, only: %i(create destroy)
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
    resource :favorite, only: %i(create destroy)
    resources :post_comments, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
