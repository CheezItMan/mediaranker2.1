class Work < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :uid, presence: true
  validates :email, presence: true
end
