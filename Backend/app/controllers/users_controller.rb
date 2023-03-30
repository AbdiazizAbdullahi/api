class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  # def index
  #   @users = User.all

  #   render json: @users
  # end

  # GET /users/1
  # def show
  #   render json: @user
  # end

  # POST /users
  def create
    user = User.create(user_params)

    if user.valid?
      render json: user, status: :created
      # , location: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def login 
    email = params[:email]
    user = User.find_by(email: email)

    if user
         render json: user, message: 'Login successfully', status: :ok
    else
        render json: { message: 'that user does not exist' },
        status: :unprocessable_entity
    end

    # session[:email] = email 
    # render json: {message: "You are logged in" }
end

  # PUT /users/1
  # Reset password 
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # def destroy
  #   @user.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :email, :year_born, :password_digest)
    end
end
