class Users::SessionsController < ApplicationController
    def create
        @user = User.find_by(email: user_params[:email])

        if @user&.valid_password?(params[:password])
            @user.update(authentication_token: generate_authentication_token)
            sign_in(@user, store: false)
            render json: { token: @user.authentication_token, user: { id: @user.id, email: @user.email, role: @user.role } }
        else
            render json: { error: 'Invalid Email or Password' }, status: :unauthorized
        end
    end

    private

    def user_params
        params.permit(:email, :password)
    end

    # Token for authentication process(Temporary token)
    def generate_authentication_token
        SecureRandom.hex(20)
      end
end
