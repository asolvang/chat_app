Rails.application.routes.draw do
  resources :message_groups, except: :new
  get 'user_search', to: 'message_groups#search'
  get 'conversation', to: 'message_groups#conversation'
  get "remove_user_from_conversation/:user/:message_group(.:format)", to: 'message_groups#remove_user_from_conversation', as: :remove_user
  get "add_user_to_conversation/:user/:message_group(.:format)", to: 'message_groups#add_user_to_conversation', as: :add_user

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