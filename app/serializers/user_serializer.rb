class UserSerializer < ActiveModel::Serializer
    attributes :id, :username
  
    has_many :reservations
  end
  