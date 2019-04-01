Rails.application.routes.draw do
  get 'leaderboards/index'
  root 'papers#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :staffs
  resources :papers
  resources :dashboards , only: [:index]
  resources :leaderboards , only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
