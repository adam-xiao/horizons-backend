class AuthController < ApplicationController
    def login
        user = User.find_by(username: user_params[:username])
    
        if user && user.authenticate(user_params[:password])
          token = encode_token(user.id)
          render json: {user: user, token: token}
        else
          render json: {errors: "Wrong User/Password"}
        end
    end
    
    def auto_login
    
        if session_user
          render json: session_user
        else 
          render json: {errors: "Invalid User"}
        end
        
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
