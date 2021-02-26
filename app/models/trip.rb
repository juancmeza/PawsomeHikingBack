class Trip < ApplicationRecord
    has_many :dog_trips
    has_many :dogs, through: :dog_trips
end
