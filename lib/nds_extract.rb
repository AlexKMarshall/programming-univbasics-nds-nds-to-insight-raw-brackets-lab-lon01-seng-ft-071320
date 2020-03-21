$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  result = {}
  
  nds.count.times do |director_index|
    director = nds[director_index][:name]
    movies = nds[director_index][:movies]
    profit = 0
    movies.count.times do |movie_index|
      profit += movies[movie_index][:worldwide_gross]
    end
    result[director] = profit
  end
  result
end
