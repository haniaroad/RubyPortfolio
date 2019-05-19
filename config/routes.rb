Rails.application.routes.draw do
  resources :portfolios
 
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs

  #Setting root path to pages controller home method // Now localhost:3000 will be homepage
  root to: 'pages#home'

end
