class Api::V1::JobApplicationsController < ApplicationController
    before_action :authenticate_user!

    def index
        if current_user.admin?
            @job_applications = JobApplication.includes(:user).all
        else
            @job_applications = current_user.job_applications
        end
    end
end
