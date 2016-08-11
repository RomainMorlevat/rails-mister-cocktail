Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :ingredients, only: [:index, :new, :create, :destroy]

  root "cocktails#index"
end
