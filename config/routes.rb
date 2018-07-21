Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'



  # TODO: Fix root routes when user authenticated vs when not auth.
  root 'welcome#index'

  # This create a different root path if there is an authenticated user already
  authenticate :user do
    root 'docs#index', as: 'authenticated_root'
  end

  resources :docs

  # Root path when there is no authenticated user
end
