Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles, except: :index
  resources :articles
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
end
