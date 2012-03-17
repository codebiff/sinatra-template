class Application < Sinatra::Base
  enable :sessions
  register Sinatra::Flash
  register Sinatra::ConfigFile

  config_file "./config.yml"

  get "/" do
    erb :index
  end

  get "/css/main.css" do
    sass :main, {:load_paths => ["public/css"]}
  end

  get "/js/main.js" do
    coffee :main
  end

  get "/js/main.js" do
    coffee :main
  end

  post "/pull" do
    system "git pull && touch tmp/restart.txt"
  end

  not_found do 
    erb :'404'
  end

end
