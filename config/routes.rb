# == Route Map
#
#      Prefix Verb   URI Pattern                     Controller#Action
#        root GET    /                               session#new
#     players GET    /players(.:format)              players#index
#             POST   /players(.:format)              players#create
#  new_player GET    /players/new(.:format)          players#new
#      player PATCH  /players/:id(.:format)          players#update
#             PUT    /players/:id(.:format)          players#update
# edit_player GET    /players/edit(.:format)         players#edit
# competition GET    /players/competitions(.:format) players#competitions
#      signup GET    /signup(.:format)               players#new
# players_new GET    /players/new(.:format)          players#new
#       login GET    /login(.:format)                session#new
#             POST   /login(.:format)                session#create
#             DELETE /login(.:format)                session#destroy
#

Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :players, :only => [:new, :create, :index, :update]
  get "/players/edit" => "players#edit", :as => 'edit_player'
  get "/players/competitions" => "players#competitions", :as => 'competition'
  get "/signup" => "players#new"
  get "/players/new" => "players#new"
  get "/players/aamen" => "players#aamen", :as => "aamen"
  get "/players/aamix" => "players#aamix", :as => "aamix"
  get "/players/u18men" => "players#u18men", :as => "u18men"
  get "/players/u18women" => "players#u18women", :as => "u18women"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/pages/welcome' => "pages#welcome", :as => "welcome"
  get '/pages/highlights' => "pages#highlights", :as => "highlight"
  get '/pages/archives' => "pages#archives", :as => "archive"

end
