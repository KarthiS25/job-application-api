class UserPolicy < ApplicationPolicy
  def index?
    user.role == 'Admin' || user.role == 'Candidate'
  end
end
