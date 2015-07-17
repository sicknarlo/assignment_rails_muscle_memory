Rails.application.routes.draw do

  get '/articles/new' => 'articles#new'

  post '/articles' => 'articles#create'

  get '/articles/:id' => 'articles#show' , as: 'article'

  get '/' => 'articles#index'

<<<<<<< HEAD
  get '/articles/edit' => 'articles#edit'
=======
  get '/articles/edit/:id' => 'articles#edit' , as: 'edit'
>>>>>>> 4974c97e40065fa40b8ecedb780b7196608d8a9c

  root to: 'articles#index'

end
