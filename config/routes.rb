Rails.application.routes.draw do
  get 'photos/index'
  get 'photos/upload'
  post 'photos/processUpload'
  get 'auth/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'auth#index'

  get 'auth/login'
  root 'auth#login'

  post 'auth/processLogin'
  root 'auth#processLogin'
end
