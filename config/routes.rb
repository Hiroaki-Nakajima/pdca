Rails.application.routes.draw do
  root "cards#index"
  resources :cards do
    member do
      get 'done'
    end
  end
  resources :plans
end
