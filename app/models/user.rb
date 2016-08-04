class User < ApplicationRecord
  has_secure_password
  has_many :routine_trackers
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :name, presence: true
  validates :provider, presence: true
end
