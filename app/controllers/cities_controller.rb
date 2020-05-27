class CitiesController < ApplicationController
  
     get '/history' do
       @user = User.find(session["user_id"])
       @history = @user.cities
       erb :"/users/history.html"
     end
  
     get '/delete' do 
      @user = User.find(session["user_id"])
      @history = @user.cities
      @history.clear
      redirect '/history'
     end
    
  end