class Artist
    
    
  def initialize(name)
    @name = name
  end
  
  def search(query)
      
      RSpotify.authenticate("a297e69c0afd4289983ecdf5e98f9d8e", "4d8b42920b41431d82d539ea80789664")
      #response = HTTParty.get('https://api.spotify.com/v1/search?q=artist:'+@name.to_s+'&type=artist', headers={secret:"4d8b42920b41431d82d539ea80789664"})
      #RSpotify::Artist.search('bob')
  end
end