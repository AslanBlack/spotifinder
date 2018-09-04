class ArtistsController < ApplicationController
    before_action :auth 
    
    def index 
        
        if !params[:artist_name].blank?
            #requete vers l'api, recherche artiste par nom depuis formulaire
            @artists = RSpotify::Artist.search(params[:artist_name])
                if @artists.length < 1
                    flash[:notice] = "Aucun artiste correspondant"
                end
            
        end
        
    end
    
    
    def show
        #affiche le résultat de la recherche 
        @artist = RSpotify::Artist.find(params[:id]) 
        @albums = @artist.albums
    end
    
    #authification app 
    def auth
      RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET'])
    end

   
end
