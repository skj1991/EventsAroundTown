class UsersController < ApplicationController

   get '/users/:id' do
     @user = User.find(session["user_id"])
     erb :"/users/profile.html"
   end

    get "/users/:id/edit" do
     @user = User.find(session["user_id"])
     erb :"/users/edit.html"
    end

    patch "/users/:id" do
     @user = User.find(session["user_id"])
     @user.username = params[:username]
     @user.email = params[:email]
     @user.save
     redirect to("/users/#{@user.id}")
   end

end
