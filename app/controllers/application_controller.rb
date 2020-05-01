class ApplicationController < ActionController::API
    # before_action :authorized


    def encode_token(id)
        JWT.encode({user_id: id}, "adamxiao")
    end

    def get_auth_header
        request.headers["Authorization"]
    end

    def decoded_token
        begin
            JWT.decode(get_auth_header, "adamxiao")[0]["user_id"]
        rescue
            nil
        end
    end

    def session_user
        User.find_by(id: decoded_token)
    end
    
    def logged_in?
        !!session_user
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
