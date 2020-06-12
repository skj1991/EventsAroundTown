class EventsController < ApplicationController
  
  get '/search' do 
    if logged_in?
      @current_user = current_user
      erb :"/events/search.html"
    else 
      redirect '/login'
    end
  end

  post '/search' do
    city = params["city"]
    results = API.get_events(city)
    if results["_embedded"]
      c = City.create(city: city, user_id: session["user_id"])
    results["_embedded"]["events"].each do |event|
      name = event["name"]
      images = event["images"][0]["url"]
      event_url = event["url"]
      info = event["info"]
      sales_start = event["sales"]["public"]["startDateTime"]
      sales_end = event["sales"]["public"]["endDateTime"]
      price_min = event["priceRanges"][0]["min"] if price_min != nil
      price_max = event["priceRanges"][0]["max"] if price_max != nil
      date = event["dates"]["start"]["localDate"]
      time = event["dates"]["start"]["localTime"]
      venue = event["_embedded"]["venues"][0]["name"]
      address = Array.new 
       address << event["_embedded"]["venues"][0]["address"]["line1"] << event["_embedded"]["venues"][0]["city"]["name"] << event["_embedded"]["venues"][0]["state"]["stateCode"] << event["_embedded"]["venues"][0]["postalCode"]
       city_id = c.id
       @event = Event.create(name: name, images: images, event_url: event_url, info: info,  sales_start: sales_start, sales_end: sales_end, price_max: price_max, price_min: price_min, date: date, time: time, venue: venue, address: address, city_id: city_id) 
      end
      redirect to "/events/#{city}"
    else
      @error = "City is not found. Please check the spelling and try again."
      erb :"/events/search.html"
    end
  end

  get "/events/:city" do
    if logged_in?
      c = City.find_by(city:params["city"])
      @city = c.events 
      erb :"/events/index.html"
    else 
      redirect '/login'
    end
  end

  get "/event/:id/show" do
    @event = Event.find(params[:id])
    erb :"/events/show.html"
  end

  delete "/events/:city" do 
    @selected_city = City.find_by(city: params["city"]).destroy
    redirect '/history'
  end
end
