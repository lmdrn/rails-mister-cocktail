Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :ingredients, only: [:show]
    resources :doses, only: [:new, :create, :show]
  end
  resources :doses, only: :destroy
end
