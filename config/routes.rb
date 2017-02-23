Rails.application.routes.draw do

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :articles
  end

  resources  :articles do
    resources :comments
  end
#  resources :sessions
  get 'articles/index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  get 'tags/:tag', to: 'articles#index', as: :tag
end
