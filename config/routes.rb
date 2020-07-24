Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  get 'comments/create'
  get 'comments/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
