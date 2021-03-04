class TripSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :time
  has_many :dog_trips
  has_many :dogs, through: :dog_trips

end
