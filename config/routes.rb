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

   resources :conversations do
     resources :messages
   end

  resources :posts do
    resources :comments
  end

  resources :teams, :only => [:new, :create, :index, :update]
  resources :topics
  resources :players, :only => [:new, :create, :index, :update]

  get "/players/edit" => "players#edit", :as => 'edit_player'
  get "/players/competitions" => "players#competitions", :as => 'competition'
  get "/signup" => "players#new"
  get "/players/new" => "players#new"
  get "/players/month3" => "players#month3", :as => "month3"
  get "/players/month6" => "players#month6", :as => "month6"
  get "/players/alltime" => "players#alltime", :as => "alltime"
  get "/players/aamen" => "players#aamen", :as => "aamen"
  get "/players/aamix" => "players#aamix", :as => "aamix"
  get "/players/u18men" => "players#u18men", :as => "u18men"
  get "/players/u18women" => "players#u18women", :as => "u18women"
  get "players/:id" => "players#show", :as => 'player_profile'
  get "teams/:id" => "teams#show", :as => "team_profile"


  post "posts/search" => "posts#search", :as => "search_posts"

  get "/forum" => "topics#index"
  get "/forum/strategies" => "topics#strategies"
  get "/forum/competitions" => "topics#competitions"
  get "/forum/general_discussion" => "topics#general_discussion"
  get "/forum/funny_stuff" => "topics#funny_stuff"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/' => 'session#destroy'
  get '/pages/welcome' => "pages#welcome", :as => "welcome"
  get '/pages/highlights' => "pages#highlights", :as => "highlight"
  get '/pages/archives' => "pages#archives", :as => "archive"
  get '/pages/contactUs' => 'pages#contactUs', :as => "contact"
  get '/pages/thankyou' => 'pages#thankyou', :as => "thankyou"

end
