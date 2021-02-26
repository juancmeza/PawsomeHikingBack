class User < ApplicationRecord
    has_many :dogs, :dependent => :destroy
    # has_many :trips, through: :dog_trips, :dependent => :destroy
end
