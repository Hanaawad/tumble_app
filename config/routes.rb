Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities do
    resources :bookings, only: [ :destroy, :create ]
    resources :reviews, only: [ :new, :create ]
  end
  get 'scrapebook', to: 'pages#scrapebook', as: :scrapebook
  get 'activities/bookings_dashboard/users/:id', to: 'users#bookings_dashboard', as: :bookings_dashboard
  get 'activities/filter_by_category/:id', to: 'activities#filter_by_category', as: :filter_by_category
  get '/:id', to: 'activities#filter_by_dropdown', as: :filter_by_dropdown
end
