Rails
  .application
  .routes
  .draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    devise_for :users
    scope 'admin' do
      resources :users
    end
    root 'home#landing'
  end
