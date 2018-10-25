Rails.application.routes.draw do
  get '/' => 'top#index'

  resources 'articles'
end
