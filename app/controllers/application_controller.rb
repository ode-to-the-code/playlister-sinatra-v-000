require 'sinatra/base'
require 'sinatra/flash'


class ApplicationController < Sinatra::Base
  enable :sessions
  use Rack::Flash
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end



end
