class Trip < ApplicationRecord
    has_many :dog_trips, :dependent => :destroy
    has_many :dogs, through: :dog_trips
end
