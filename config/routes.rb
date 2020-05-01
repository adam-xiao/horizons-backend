Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'auth#login'

  get "/auto_login", to: "auth#auto_login"

  get "/retrieveitin", to: "users#selfItin"
  get "/retrieveactivity", to: "itineraries#selfActivity"


  get '/user', to: 'users#index'
  post '/user', to: 'users#create'

  get '/itinerary', to: 'itineraries#index'
  post '/itinerary', to: 'itineraries#create'

  get '/activity', to: 'activities#index'
  post '/activity', to: 'activities#create'

  get '/discover/:term', to: "api#placeAutoComplete"

  get '/activities/:id', to: "api#placeDetails"

end
