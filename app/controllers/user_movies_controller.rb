class UserMoviesController < ApplicationController
  before_action :set_user_movie, only: %i[ show update ]

  # GET /user_movies
  def index
    user_movies = UserMovie.all

    render json: user_movies
  end

  # GET /user_movies/1
  def show
    render json: user_movie
  end

  # POST /user_movies
  def create
    user_movie = UserMovie.create(user_movie_params)

    if user_movie.valid?
      render json: user_movie, status: :created
    else
      render json: user_movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_movies/1
  def update
    if user_movie.update(user_movie_params)
      render json: user_movie
    else
      render json: user_movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_movies/1
  # def destroy
  #   @user_movie.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_movie
      user_movie = UserMovie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_movie_params
      params.require(:user_movie).permit(:genre, :user_id, :movie_id)
    end
end
