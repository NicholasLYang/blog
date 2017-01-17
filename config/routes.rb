Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
    get 'logout' => :destroy
  end
  namespace :admin do
    resources :articles, :comments
  end
  resources :users
  resources  :articles
  resources :sessions
  get 'articles/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
