Rails.application.routes.draw do
  
  get 'welcome/index'

  devise_for :users

  resources :notes

  authenticated :user do
    root 'root#index', as: "authenticated_root"
  end

  root 'welcome#index'

end
