require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "Penguin2002"
    set :method_override, true
  end

  get "/" do
    erb :welcome
  end

  private

  def logged_in?
    !!session["user_id"]
  end

  def current_user
    User.find(session["user_id"])
  end 

end
