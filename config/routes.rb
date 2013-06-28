Postit::Application.routes.draw do
  root to: 'posts#index'

  resources :posts, except: [:destroy] do
    member do #individual
  	  get 'flag'
    end
    collection do #all posts
      get 'archives'
    end
    resources :comments
  end
    
  resources :users, only: [:new, :create]

  get '/register', to: 'users#new'
  post '/validate', to: 'application#validate'

end