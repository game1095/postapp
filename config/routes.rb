Rails.application.routes.draw do
  root 'papers#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :staffs
  resources :papers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
