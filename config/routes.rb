Rails.application.routes.draw do
  
  
  	root "players#pagInicial"
  	get "players/busca" => "players#busca", as: :busca_player

  	resources :players, only: [:new,:create,:destroy,:edit,:update]
	  	# get "/players/new" => "players#new"
	  	# post"/players" => "players#create"
	  	# delete "/players/:id" => "players#destroy", as: :player
	resources :treinamentos
end
	