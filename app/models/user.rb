class User < ApplicationRecord
  validates :name, presence: true
  validates :uid, presence: true
  validates :email, presence: true
  validates :provider, presence: true
  validates_format_of :email, :with => /@/
  has_many :works
end
