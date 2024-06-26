Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :collections, only: [:show, :new, :index, :create]
  resources :parties, only: [:index, :show]
  resources :characters, only: [:index, :show] do
    resources :parties, only: [:new, :create]
  end
  patch "levels/:id/finish_level", to: "parties#finish_level", as: :finish_level
  patch "/characters/:id/achat", to: "collections#buying", as: :buying_item
  resources :levels, only: [:show]
end

# Rajouter une route permettant de créer une partie quand on valide un exercice
# cette route dirige vers le create de partie (besoin du current_user et du level correspondant ainsi que du nombre d'erreur)
# une fois la création terminé on redirige sur la page avec les drapeaux
# pour passer le drapeau au vert, on check si il existe une party entre le current_user et le level
