Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :students
  resources :grades
  resources :assignments
  resources :courses
  root to: "pages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
