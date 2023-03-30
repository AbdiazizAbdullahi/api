class MoviesController < ApplicationController

    def index
       movie = Movie.all
       render json: movie 
    end

    def show 
        movie = Movie.find_by(id: params[:id])
        if movie
        render json: movie
        else 
            render json: {error: "Movie not found"}, status: 404
        end
    end 
end
