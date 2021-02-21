Rails.application.routes.draw do
  resources :message_groups do
  end
  get 'user_search', to: 'message_groups#search'

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout'}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'create_account', to: 'devise/registrations#new'
    get 'edit_account', to: 'devise/registrations#edit'
    get 'forgot_password', to: 'devise/passwords#new'
  end

  authenticated :user do
    root to: 'message_groups#index', as: :user_message_groups
  end
  
  root to: 'static_pages#index'
  
  
  get 'static_pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end