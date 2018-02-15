require 'themoviedb-api'

class SearchMovie
	def initialize(movie_title)
		Dotenv.load
		@movie_title = movie_title		
		Tmdb::Api.key('4c77edcb39209d29208aee3e9d4676e3')
	end

	

	def get_movies
		@movies = Tmdb::Search.movie(@movie_title).results
		@movies.each do |movie|
			@movie_director = Tmdb::Movie.director(movie.id)
			@movie_director.each do |movie_director|
				movie[:movie_director] = movie_director.name
			end
		end
		return @movies
	end

end