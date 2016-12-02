require 'nokogiri'
require 'net/http'

#My API
jurassic_park_response = open("http://www.omdbapi.com/?t=Jurassic+Park&y=&plot=short&r=json").read
jurassic_parsed_response = JSON.parse(jurassic_park_response)
jurassic_movie = Movie.create(title: jurassic_parsed_response["Title"], year: jurassic_parsed_response["Year"], imdbID: jurassic_parsed_response["imdbID"])

#Nokogiri specific page
jurrasic_imdb_quote_page =  Net::HTTP.get(URI('http://www.imdb.com/title/tt0107290/quotes'))
jurassic_park_quotes = Nokogiri.parse(jurrasic_imdb_quote_page)
jurassic_park_quotes = jurassic_park_quotes.css('.sodatext')
jurassic_park_quotes = jurassic_park_quotes.map(&:inner_text)

#added a deck id and initial user
user =  User.create(username: 'lori', password: 'yuca88', email: 'lori@gmail.com')
deck = Deck.create(name: 'Movie Deck 1')

jurassic_park_quotes.each do |quote|
  Quote.create(text: quote.strip, movie_id: 1, deck_id: 1)
end
