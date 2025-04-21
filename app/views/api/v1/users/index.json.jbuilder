json.array! @users do |user|
    json.extract! user, :id, :name, :email, :role
  
    json.job_applications user.job_applications do |app|
      json.extract! app, :id, :title, :company
    end
end