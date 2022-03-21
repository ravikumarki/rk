Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/articles', to: 'articles#index'
  post '/login', to: 'access_tokens#create'
  delete '/logout', to: 'access_tokens#destroy'
  post '/sign_up', to: 'registrations#create'
  resources :articles, only: [:index, :show, :create, :update]
  resources :articles do
    resources :comments, only: [:index,:create]
  end

end
