class JobApplication < ApplicationRecord
  belongs_to :user

  validates :title, :company, presence: true
end
