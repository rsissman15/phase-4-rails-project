class ReservationSerializer < ActiveModel::Serializer
  attributes :date, :id

  belongs_to :activity
end
