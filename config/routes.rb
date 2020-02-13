Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/show'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/new'
  get 'cocktails/create'
  get 'cocktails/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :ingredients, only: [:show]
    resources :doses, only: [:new, :create, :show,]
  end
  resources :doses, only: :destroy
end
