Rails.application.routes.draw do

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :articles
  end

  resources  :articles do
    resources :comments
  end
  get 'articles/index'
  get 'welcome/index'
  root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'all', to: 'articles#index_all'
  get 'tags/:tag', to: 'articles#index', as: :tag
  
end
