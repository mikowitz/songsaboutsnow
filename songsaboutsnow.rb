require "sinatra/base"
require "sinatra/asset_snack"

class Songsaboutsnow < Sinatra::Base
  register Sinatra::AssetSnack
  asset_map "/styles/application.css", ["assets/css/*.scss"]
  get "/" do
    @poetry_links = {
      "Hollow/Broken Tooth Press" => "https://www.brokentoothpress.com/store/hollow-issue-v-ebook",
      "Reservoir" => "http://reservoirlit.com/berkowitz",
      "One Sentence Poems (For a medical examiner in Orlando)" => "http://www.onesentencepoems.com/osp/michael-berkowitz-for-a-medical-examiner-in-orlando/",
      "Persephone's Daughters" => "http://persephonesdaughters.tk/index.php/michael-berkowitz-three-poems/",
      "Jersey Devil Press" => "http://www.jerseydevilpress.com/?page_id=6885",
      "Bird's Thumb" => "http://birdsthumb.org/july-2015/2015/6/29/indian-summer",
      "Quarterly West" => "http://quarterlywest.com/?p=2220",
      "Right Hand Pointing" => "http://www.righthandpointing.net/#!86-michael-berkowitz/cmko",
      "The Journal of the Hemlock Homebrewing Society" => "http://issuu.com/hemlockhomebrew/docs/hemlock_homebrew__1",
      "Tinderbox Poetry" => "http://www.tinderboxpoetry.com/emily-twelve-years-later",
      "Hermes Poetry Journal" => "http://windlee.wix.com/hermespoetry#!2014-p6/c1gt5",
      "One Sentence Poems (The restored typewriter)" => "http://onesentencepoems.com/osp/michael-berkowitz-the-restored-typewriter/",
      "The Rampallian" => "http://www.magcloud.com/browse/issue/804364",
      "Eunoia Review" => "https://eunoiareview.wordpress.com/tag/michael-berkowitz",
      "Sixfold" => "http://www.sixfold.org/PoWinter13/Berkowitz.html"
    }
    haml :index
  end

  get "/penguins" do
    haml :penguins
  end

  get "/otters" do
    haml :otters
  end

  get "/send" do
    html :send
  end
end
