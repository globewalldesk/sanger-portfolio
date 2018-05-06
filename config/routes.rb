Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  resources :portfolios, except: [:show, :edit]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolio/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'
end
