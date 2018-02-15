class MoviesController < ApplicationController
  def home
  	@movie = Movie.new
  end

  def search
  	@movie = Movie.new(movie_params)
    @search = SearchMovie.new(@movie.title)
    @movies = @search.get_movies
    if @movies.length == 0
       flash[:notice] = "Il n'y a aucun résultat pour votre recherche"
       redirect_to root_path
    end

  end

  private #on ne récupère de la view que les données qui nous intéressent (anonyme_user et content) - placé ici dans le script par convention
    def movie_params
      params.permit(:title)
    end
end