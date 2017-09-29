Rails.application.routes.draw do
  resources :comments
  resources :recipes
  get 'auth/:provider/callback', to: 'sessions#create'
     get 'auth/failure', to: redirect('/')
     get 'signout', to: 'sessions#destroy', as: 'signout'

     resources :sessions, only: [:create, :destroy]
     resource :home, only: [:show]

     root to: "home#show"
     def show
       @article = Article.find(params[:id])
     end

     def new
     end
 end
