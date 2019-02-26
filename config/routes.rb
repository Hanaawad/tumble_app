Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities do
    resources :bookings
  end
  get 'activities/dashboard/users/:id', to: 'users#dashboard', as: :dashboard
end
