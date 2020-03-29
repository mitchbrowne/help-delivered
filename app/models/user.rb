class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true

  has_many :tasks
  has_one :requester
  has_one :responder
end
