Rails.application.routes.draw do
  get 'auth/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'auth#index'

    get 'auth/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'auth#login'
end
