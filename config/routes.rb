Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/provider/list' => 'provider#list'
  get '/provider/show' => 'provider#show'
  post '/consumer/create' => 'consumer#create'
  post '/users/create' => 'users#create'

end
