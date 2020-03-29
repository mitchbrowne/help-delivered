class Responder < ApplicationRecord
  belongs_to :user, :optional => true, index: { unique: true }, foreign_key: true
  has_many :tasks
end
