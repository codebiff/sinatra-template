class Application < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/css/main.css" do
    sass :main, {:load_paths => ["public/css"]}
  end

  # Pull latest commit from GitHub automatically
  post "/pull" do
    system "git pull && touch tmp/restart.txt"
  end

  not_found do 
    erb :'404'
  end

end