Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfolios
 
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
    member do
      get :togglestatus
    end
  end

  #Setting root path to pages controller home method // Now localhost:3000 will be homepage
  root to: 'pages#home'

end
