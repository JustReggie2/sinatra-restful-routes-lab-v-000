class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect '/recipes'
  end

  get '/recipes' do
    @recipes = Recipe.all

    erb :index
  end

  get 'recipes/new' do
    "Hello world"
  end

  post 'recipes/show/:id' do
    @recipe = Recipe.find_by_id(params[:id])

    erb :show
  end

end
