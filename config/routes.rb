Rails.application.routes.draw do
  # mount Ckeditor::Engine => '/ckeditor'
  ActiveAdmin.routes(self)
  get '/' => 'top#index'
  get '/author' => 'statics#author'

  resources 'articles'
  resources 'statics', only: %i(author)
end
