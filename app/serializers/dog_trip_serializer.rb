class DogTripSerializer < ActiveModel::Serializer
  attributes :id
  has_one :dog
  has_one :trip
end
