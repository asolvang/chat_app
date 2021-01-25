Rails.application.routes.draw do
  get 'create-account', to: 'devise/registrations#new'
  get 'account-update', to: 'devise/registrations#edit'
  get 'sign-in', to: 'devise/sessions#new'
  devise_for :users
  root to: 'static_pages#index'
  get 'static_pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
