class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
# only need to do (at least) 3 of the CRUD actions for this project
  get "/scores" do
    scores = Score.all
    scores.to_json
  end
  
  get "/players" do
    scores = Player.all
    scores.to_json
  end

  get "/players/:id" do
    scores = Player.all
    scores.to_json
  end

  post "/players" do
    player_info = Player.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age]
    )
    player_info.to_json
  end

  patch "/players/:id" do
    player = Player.find(params[:id])
    player.update(first_name: params[:first_name])
    player.update(last_name: params[:last_name])
    player.update(age: params[:age])
    player.to_json
  end

end

  # OTHER EXAMPLES BELOW FROM LABS:

  # get '/bakeries/:id' do
  #   bakery = Bakery.find(params[:id])
  #   bakery.to_json(include: :baked_goods)
  # end

  # get '/baked_goods/by_price' do
  #   # see the BakedGood class for the  method definition of `.by_price`
  #   baked_goods = BakedGood.by_price
  #   baked_goods.to_json
  # end

  # get '/baked_goods/most_expensive' do
  #   # see the BakedGood class for the  method definition of `.by_price`
  #   baked_good = BakedGood.by_price.first
  #   baked_good.to_json
  # end

  # delete '/baked_goods/:id' do
  #   baked_good = BakedGood.find(params[:id])
  #   baked_good.destroy
  #   baked_good.to_json
  # end


