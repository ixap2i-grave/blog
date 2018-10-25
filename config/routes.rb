Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get '/' => 'top#index'
  get '/author' => 'statics#author'

  resources 'articles'
  resources 'statics', only: %i(author)
end
