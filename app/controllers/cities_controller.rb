class CitiesController < ApplicationController
  
     get '/history' do
      @user_history = current_user.cities
      erb :"/users/history.html"
     end
  
     get '/delete/:id' do 
      #current_user.cities.find_by_id(params[:id])
      @user_history = current_user.cities
      @user_history.clear
      redirect '/history'
     end
    
  end