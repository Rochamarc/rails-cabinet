Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
  resources :docs #creates all the routes that we create for the application
  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end

  root "welcome#index"
end
