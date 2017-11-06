Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'welcome#index'
  post :inverse, to: 'inverse_color#index'
  get :about, to: 'about#index'
  resources :nice_things, only: [:show, :new, :create], path: :nc do
    member do
      get :why, to: 'nice_things#content', as: :content
      get :image, to: 'nice_things#image', as: :image
      get :download, to: 'nice_things#download', as: :download
    end
  end
end
