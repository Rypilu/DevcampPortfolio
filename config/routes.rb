Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  # custom route method singular instead of out of the box plural
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end
