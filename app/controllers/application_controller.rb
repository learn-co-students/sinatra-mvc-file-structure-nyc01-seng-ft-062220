class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end

  get "/roman:test_url_variable" do
    "You found the secret page #{params[:test_url_variable]}"
  end

end
