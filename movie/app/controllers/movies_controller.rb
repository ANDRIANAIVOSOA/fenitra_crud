class MoviesController < ApplicationController
    def liste_film
        @movies = Movie.all
    end
end
