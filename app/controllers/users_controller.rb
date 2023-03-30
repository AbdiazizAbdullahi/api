class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update ]


  # GET /users/1
  def show
    current_user = User.find(session[:user_id])
    render json: current_user, status: :ok
  end

  # POST /users
  def create
    user = User.create(user_params)

    if user.valid?
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # PUT /users/1
  # Reset password 
  def update
    if user.update(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :email, :year_born, :password)
    end
end
