Rails.application.routes.draw do
  devise_for :users
  root "cards#index"

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
  
end
