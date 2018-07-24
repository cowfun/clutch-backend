Rails.application.routes.draw do

  root 'products#index'
  resources :products, only: [:index, :show, :create, :new, :destroy]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [:index, :show]
    end
  end
end
