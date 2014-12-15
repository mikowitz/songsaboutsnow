require "sinatra/base"
require "sinatra/asset_snack"

class Songsaboutsnow < Sinatra::Base
  register Sinatra::AssetSnack
  asset_map "/styles/application.css", ["assets/css/*.scss"]
  get "/" do
    @poetry_links = {
      "Hermes Poetry Journal" => "http://windlee.wix.com/hermespoetry#!2014-p6/c1gt5",
      "One Sentence Poems" => "http://onesentencepoems.com/osp/michael-berkowitz-the-restored-typewriter/",
      "The Rampallian" => "http://www.magcloud.com/browse/issue/804364",
      "Eunoia Review" => "https://eunoiareview.wordpress.com/tag/michael-berkowitz",
      "Sixfold" => "http://www.sixfold.org/PoWinter13/Berkowitz.html"
    }
    haml :test
  end

  get "/penguins" do
    haml :penguins
  end
end
