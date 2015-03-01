Rails.application.routes.draw do

  resources :teams, only: [:index, :show]
  resources :players, only: [:index, :show]

  get '/teams/:team_abbrev/players' => 'teams#players'

end
