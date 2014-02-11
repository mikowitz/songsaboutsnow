require 'sinatra/base'
require 'sinatra/asset_snack'

class Songsaboutsnow < Sinatra::Base
  register Sinatra::AssetSnack
  asset_map '/styles/application.css', ['assets/css/*.scss']
  get '/' do
    send_file 'views/index.html'
  end
end
