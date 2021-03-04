class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :breed, :age
  has_one :user
  has_many :dog_trips
  has_many :trips, through: :dog_trips

end
