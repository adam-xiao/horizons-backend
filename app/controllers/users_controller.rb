class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]
  
  def index
    render json: User.all
  end

  def selfItin
    render json: Itinerary.all.filter{|itin| itin.user_id == decoded_token}
  end

  def create
    user = User.new(user_params)
    # user.save

    # redirect_to user_path
  
    if user.save
      token = encode_token(user.id)
      render json: {user: user, token: token}
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
