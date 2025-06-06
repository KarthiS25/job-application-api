Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :job_applications, only: [:index]
    end
  end
end
