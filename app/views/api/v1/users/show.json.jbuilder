json.id @user.id
json.name @user.name
json.email @user.email
json.role @user.role

json.job_applications @user.job_applications do |job_application|
    json.id job_application.id
    json.company job_application.company
    json.title job_application.title
    json.created_at job_application.created_at
end
