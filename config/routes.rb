Rails.application.routes.draw do
  get 'photos/index' , as: 'photos_index'
  get 'photos/upload'
  post 'photos/processUpload'
  get 'auth/login'
  root 'auth#login'
  post 'auth/newlogin', as: 'newlogin'
end
