Rails.application.routes.draw do
  get '/' => 'top#index'
  get '/author' => 'statics#author'

  resources 'articles'
  resources 'statics', only: %i(author)
end
