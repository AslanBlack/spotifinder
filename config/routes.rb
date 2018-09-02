Rails.application.routes.draw do
  root 'artists#index'
  
  get '/artists/:id', to:'artists#show', as: 'artist'
  
end
