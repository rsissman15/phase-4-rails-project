class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates_presence_of :date



end
