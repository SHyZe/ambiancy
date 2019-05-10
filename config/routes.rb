Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  ## UTILISATEUR
  devise_for :users, controllers: {
  	registrations: 'registrations'
  }
  get 'users/show', as: :profile

  ## ACCUEIL
  root to: 'accueil#index', as: :accueil
  get 'accueil/about', as: :about
  get 'accueil/contact', as: :contact
  get 'accueil/services', as: :services

  ## POST
  resources :posts do
    # post 'comment_posts', to: "comment_posts#create"
    resources :comment_posts, only:[:create, :destroy]
    member do
      put 'like', to: 'posts#upvote'
      put 'dislike', to: 'posts#downvote'
    end
  end

  ## PRODUCT
  resources :products do
    # post 'comment_products', to: "comment_products#create"
    resources :comment_products, only:[:create, :destroy]
    member do
      put 'like', to: 'products#upvote'
      put 'dislike', to: 'products#downvote'
    end
  end

end
