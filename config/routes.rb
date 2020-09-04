Rails.application.routes.draw do
  resources :members
  resources :videos

  get "refresh" => "videos#refresh"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#index"
end
