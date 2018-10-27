Rails.application.routes.draw do
  # mount Ckeditor::Engine => '/ckeditor'
  ActiveAdmin.routes(self)
  get '/' => 'top#index'
  get '/author' => 'statics#author'

  resources 'articles' do
    collection do
      get :index
      get :edit, format: false
    end
    member do
      get %i(new create destroy update)
    end
  end

  resources 'tags' do
    collection do
      get :index
      get :edit, format: false
    end
    member do
      get %i(new create destroy update)
    end
  end
  
  resources 'statics', only: %i(author)
end
