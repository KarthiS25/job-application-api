class ApplicationController < ActionController::API
    include Pundit::Authorization

    private

    def authenticate_user!
        token = request.headers['Authorization']&.split(' ')&.last
        @current_user = User.find_by(authentication_token: token)
        render json: { error: 'Unauthorized' }, status: :unauthorized unless @current_user
    end

    def current_user
        @current_user
    end
end
