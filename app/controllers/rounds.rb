post '/rounds' do
  #give logic that requires log in
  @deck = Deck.find(params[:deck_id])
  @round = Round.create(user: current_user, deck: @deck)
  @quote = Quote.find(1)
  redirect "/rounds/#{@round.id}/decks/#{@deck.id}/quotes/#{@quote.id}"
end

get '/rounds/:round_id' do
  @round = find_round(params[:round_id])
  erb :'rounds/show'
end
