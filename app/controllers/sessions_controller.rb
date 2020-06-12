class SessionsController < ApplicationController
    get "/login" do 
      erb :"/users/login.html"
    end
  
    get "/sign-up" do 
      erb :"/users/signup.html"
    end
  
    post "/login" do 
      user = User.find_by(username: params[:username])
      if  user && user.authenticate(params[:password])
        session["user_id"] = user.id
        redirect "/search"
      else
        @error = "Unable to find user. Please try again!"
        erb :"/users/login.html"
      end
    end
  
    post "/sign-up" do
      user = User.new(params)
      if !user.save
        @error = user.errors.full_messages.join(" ")
        erb :"/users/signup.html"
      else
        session["user_id"] = user.id
        redirect "/search"
      end
    end
  
    get "/logout" do 
      session.destroy
      redirect '/'
    end

    get "/home" do
      redirect "/search"
    end
    
  end