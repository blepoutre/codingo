Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :parties, only: [:index, :show] do
    resources :levels, only: [:show]
  end
end
