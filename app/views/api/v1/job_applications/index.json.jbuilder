json.job_applications @job_applications do |job_application|
    json.id job_application.id
    json.company job_application.company
    json.title job_application.title
    json.created_at job_application.created_at
  
    json.user do
        json.id job_application.user.id
        json.name job_application.user.name
        json.email job_application.user.email
        json.role job_application.user.role
    end
end
