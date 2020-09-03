Rails.application.routes.draw do
  get 'videos/index'

  get 'videos/edit'

  get 'videos/new'

  resources :members
  resources :videos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#index"
end
