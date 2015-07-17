Rails.application.routes.draw do

  get '/articles/new' => 'articles#new'

  root to: 'articles#new'

  
end
