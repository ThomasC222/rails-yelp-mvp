Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'review/new'
  get 'review/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :restaurants, only: [ :index, :new, :create, :show ]
resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end
