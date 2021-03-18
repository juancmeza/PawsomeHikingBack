class Dog < ApplicationRecord
  belongs_to :user
  has_many :dog_trips, :dependent => :destroy
  has_many :trips, through: :dog_trips, :dependent => :destroy
end
