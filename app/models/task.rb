class Task < ApplicationRecord
  belongs_to :requester, :optional => true
  belongs_to :responder, :optional => true
end
