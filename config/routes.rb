Rails.application.routes.draw do
  get 'photos/index'
  get 'photos/upload'
  post 'photos/processUpload'
  get 'auth/login'
  root 'auth#login'
  post 'auth/processLogin'
  root 'auth#processLogin'
end
