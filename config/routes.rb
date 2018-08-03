Rails.application.routes.draw do
  get 'photos/index' , as: 'photos_index'
  get 'photos/upload'
  post 'photos/processUpload', as: 'processupload'
  get 'auth/login'
  root 'auth#login', as: 'login'
  post 'auth/processlogin', as: 'processlogin'
  get 'auth/logout', as: 'logout'
end
