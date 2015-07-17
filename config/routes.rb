Rails.application.routes.draw do

  get '/articles/new' => 'articles#new'

  post '/articles' => 'articles#create'

  get '/articles/:id' => 'articles#show' , as: 'article'

  get '/' => 'articles#index'

  get '/articles/edit/:id' => 'articles#edit' , as: 'edit'

  root to: 'articles#index'

  
end
