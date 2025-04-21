User.create!(name: "Admin", email: "admin@example.com", password: "password", role: "admin")
u1 = User.create!(name: "John", email: "john@example.com", password: "password", role: "candidate")
u2 = User.create!(name: "Maddy", email: "maddy@example.com", password: "password", role: "candidate")

2.times do |i|
  u1.job_applications.create!(title: "Developer #{i+1}", company: "Tech Corp")
  u2.job_applications.create!(title: "Designer #{i+1}", company: "Creative Inc")
end