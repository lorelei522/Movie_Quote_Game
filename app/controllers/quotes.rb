get '/rounds/:round_id/decks/:deck_id/quotes/:quote_id' do
  @round = Round.find_by_id(params[:round_id])
  @deck = Deck.find_by_id(params[:deck_id])
  @quote = Quote.find_by_id(params[:quote_id])
  erb :'/quotes/show'
end

post '/guesses' do
  @round = Round.find_by_id(params[:round_id])
  @deck = Deck.find_by_id(params[:deck_id])
  @quote = Quote.find_by_id(params[:quote_id])
  @next_quote = Quote.find(@quote.id + 1)
  # binding.pry
  @guess = Guess.create(round_id: @round.id, movie_id: @quote.movie_id)
  if params[:user_answer].downcase == @quote.movie.title.downcase
    if @quote.id < @deck.quotes.length
      redirect "/rounds/#{@round.id}/decks/#{@deck.id}/quotes/#{@next_quote.id}"
    else
      redirect "/rounds/#{@round.id}"
    end
  else
    redirect "/rounds/#{@round.id}/decks/#{@deck.id}/quotes/#{@quote.id}"
  end
end
