Rails.application.routes.draw do
  devise_for :users
  root "application#index"

  resources :cards do
    member do
      get 'done'
    end
  end

  resources :plans

  resources :routines do
    member do
      get 'done'
    end
  end

  resources :months
  resources :application, onry: :index
end
