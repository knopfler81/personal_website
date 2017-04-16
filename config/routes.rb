Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  resources :blogs

  root to: 'pages#home'
  get 'projects',  to: 'pages#projects'
  get 'videos', to: "pages#videos"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
