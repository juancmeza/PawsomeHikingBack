class Dog < ApplicationRecord
  belongs_to :user
  has_many :dog_trips
  has_many :trips, through: :dog_trips
end
