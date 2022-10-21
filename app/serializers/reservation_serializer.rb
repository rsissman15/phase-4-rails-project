class ReservationSerializer < ActiveModel::Serializer
  attributes :date, :id

  belongs_to :activity
  belongs_to :user
end
