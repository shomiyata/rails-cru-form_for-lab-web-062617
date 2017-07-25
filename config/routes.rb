Rails.application.routes.draw do
  resources :songs, only: [:show, :create, :update, :new, :edit]
  resources :artists, only: [:create, :update, :show, :new, :edit]
  resources :genres, only: [:create, :update, :show, :new, :edit]
end
