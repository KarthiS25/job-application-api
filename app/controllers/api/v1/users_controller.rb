class Api::V1::UsersController < ApplicationController
    before_action :authenticate_user!
    include Pundit::Authorization

    def index
        if current_user.role == "Admin"
            @users = User.includes(:job_applications).all
        else
            @users = [current_user]
        end
    end

    def show
        @user = User.find(params[:id])
        authorize @user
    end
end
