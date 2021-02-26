class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :breed, :age
  has_one :user
end
