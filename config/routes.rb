Postit::Application.routes.draw do
  root to: 'posts#index'
  # get '/posts', to: 'posts#index'
  # get '/posts/new', to: 'posts#new'
  # get '/posts/:id', to: 'posts#show'
  # post '/posts', to: 'posts#create'
  # get '/post/:id/edit', to: 'posts#edit'
  # put 'post/:id', to: 'posts#update'
  # delete 'post/:id', to: 'posts#destroy'
  resources :posts, except: [:destroy] do
    member do #individual
  	  get 'flag'
    end
    collection do #all posts
      get 'archives'
    end
  end
    
  resources :comments, only: [:show, :index]
  resources :users

end