Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login',
                                             sign_out: 'logout',
                                             sign_up: 'register' }
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :portfolios, except: [:show, :edit]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolio/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'
  get 'angular-items', to: 'portfolios#angular'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
