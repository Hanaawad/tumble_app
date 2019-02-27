Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities do
    resources :bookings, only: [ :destroy, :create ]
    resources :reviews, only: [ :new, :create ]
  end
  get 'scrapebook', to: 'pages#scrapebook', as: :scrapebook
  get 'activities/bookings_dashboard/users/:id', to: 'users#bookings_dashboard', as: :bookings_dashboard
  get 'activities/reviews_dashboard/users/:id', to: 'users#reviews_dashboard', as: :reviews_dashboard
end
