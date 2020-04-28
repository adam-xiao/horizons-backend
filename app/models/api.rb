class Api

    def self.placeFetch(term)
        cleanse = term.split.join("%20")

        url = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=#{cleanse}&inputtype=textquery&fields=photos,formatted_address,name,rating,opening_hours,geometry&key=#{ENV["GOOGLE_KEY"]}"
        response = HTTParty.get(url)
        
        return response
    end

    def self.placeAutoComplete(term)
        cleanse = term.split.join("%20")

        url = "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=#{cleanse}&key=#{ENV["GOOGLE_KEY"]}"
        response = HTTParty.get(url)
        
        return response
    end

    
end