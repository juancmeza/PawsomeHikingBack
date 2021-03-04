class UserSerializer < ActiveModel::Serializer
  attributes :username, :first_name, :last_name, :email, :phone_number, :id
  has_many :dogs
  has_many :dog_trips, through: :dogs
  has_many :trips, through: :dog_trips

end
