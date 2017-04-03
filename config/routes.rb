Rails.application.routes.draw do
  root to: 'pages#home'
  get 'projects',  to: 'pages#projects'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
