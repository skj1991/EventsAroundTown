class API
    def self.get_events(city)
        key = "JdmAyVFHy7l8ag86hrQARLLvciCtJadm"
        url = "https://app.ticketmaster.com/discovery/v2/events.json?city=#{city}&apikey=#{key}"
        return response = HTTParty.get(url)
    end
end