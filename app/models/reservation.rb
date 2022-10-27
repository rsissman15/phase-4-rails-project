class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates_presence_of :date
  validates :date, uniqueness: { scope: :user_id, message:":You have booked something on this day already"}
  validate :future_event

  def future_event
    errors.add(:date, "can't be in the past!") if date < Time.now
  end




end
