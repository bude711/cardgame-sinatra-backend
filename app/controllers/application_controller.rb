class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/scores' do
    scores = Score.all
    scores.to_json
  end
  
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

 
  post '/player' do
    player_info = Player.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age]
    )
    player_info.to_json
  end

  patch '/players/:id' do
    player = Player.find(params[:id])
    player.update(first_name: params[:first_name])
    player.update(last_name: params[:last_name])
    player.update(age: params[:age])
    player.to_json
  end

  delete '/score/:id' do
    score = Score.find(params[:id])
    score.destroy
    score.to_json
  end


end
