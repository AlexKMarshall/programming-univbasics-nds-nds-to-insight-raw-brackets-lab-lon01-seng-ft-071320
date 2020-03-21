$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  pp nds
  
  nds.count.times do |director_index|
    director = nds[director_index][:name]
    movies = nds[director_index][:movies]
    profit = 0
    movies.count.times do |movie_index|
      profit += movie[:worldwide_gross]
    end
    result[director] = profit
  end
  result
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end
