Rails.application.routes.draw do
  root 'pages#home'
  resources :portfolios
  resources :blogs
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
