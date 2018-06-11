Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  resources :docs

  # This create a different root path if there is an authenticated user already
  authenticate :user do
    root 'docs#index', as: 'authenticated_root'
  end

  # Root path when there is no authenticated user
  root 'welcome#index'
end
