class UsersController < ApplicationController
  skip_before_action :authorized, only:[:create]
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  def index
    @users = User.all
    render json: @users, include: [{reservations:{include: [:activity]}}]
  end

  # GET /users/1
  def show
    user=User.find(params[:id])
    render json: user, include: [{reservations:{include: [:activity]}}]
  end

   
  # POST /users
  def create
    #@user=User.new(user_params)
    @user=User.create!(user_params)
    @token=encode_token({user_id:@user.id})
    render json: {user:@user, token: @token}, status: :created

  rescue ActiveRecord::RecordInvalid => e
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    
    # if @user.save
    #   @token=encode_token({user_id:@user.id})
    #   render json: {user:@user, token: @token}, status: :created
    # else
    #   render json: @user.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password)
    end


end
