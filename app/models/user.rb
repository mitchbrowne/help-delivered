class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true

  has_many :tasks
  has_many :requesters
  has_many :responders
end
