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
      if params["username"].empty? || params["password"].empty? || params["email"].empty?
        @error = "Please make sure to complete all of the fields within the form to Sign-up successfully!"
        erb :"/users/signup.html"
      else
        user = User.create(params)
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