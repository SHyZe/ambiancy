Rails.application.routes.draw do
  get 'comment_posts/create'
  get 'comment_posts/destroy'
  get 'comment_products/create'
  get 'comment_products/destroy'
  ## Lien Utilisateurs
  devise_for :users, controllers: {
  	registrations: 'registrations'
  }
  get 'users/show', as: :profile

  ## Lien Accueil
  root to: 'accueil#index', as: :accueil
  get 'accueil/about', as: :about
  get 'accueil/contact', as: :contact
  get 'accueil/services', as: :services
  ## Lien Posts
  resources :posts
  ## Lien Products
  resources :products, :comment_products
end
