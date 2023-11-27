Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, except: [:destroy] # this will add all get request links automatically except destroy link

  #post '/articles/new' => 'articles#create'
  #post '/articles/:id' => 'articles#update'
  #post '/articles/:id/edit' => 'articles#update' # this 3 lines are needed for other forms purpose

  # we need this 2 lines for our delete link_to setup
  delete 'articles/:id/delete' => 'articles#destroy', as: 'articles_delete'
  get '/articles/:id/delete' => 'articles#destroy'
  
end
