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
    scores = Player.find(param[:id])
    scores.to_json
  end

  get "/scores/:id" do
    scores = Score.find(params[:id])
    scores.to_json
  end

  get "/highscore" do
    highscore = Score.highest_score
    player = Player.find(highscore.player_id)
    playerWithScore = {
      score: highscore.score,
      name: player.name,
      age: player.age,
      score_id: highscore.id
    }
    playerWithScore.to_json
  end

  post "/players" do
    player_info = Player.create(
      name: params[:name],
      age: params[:age],
    )
    player_info.to_json
    score_info =Score.create(
      score: params[:score],
      player_id: player_info.id
    )
  end

  post "/players/:name" do
    player = Player.find_by(name: (params[:name]))
    new_score = Score.create(
      score: params[:score],
      player_id: player.id
    )
    new_score.to_json
  end

  delete "/scores/:id" do
    player_score = Score.find(params[:id])
    player_score.destroy
    player_score.to_json
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


