class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :dogs, :dependent => :destroy
    has_many :dog_trips, through: :dogs
    has_many :trips, through: :dog_trips

    # has_many :trips, through: :dog_trips, :dependent => :destroy

    def self.show_trips(id)
      @user = User.all.find(id)
      @user.dogs.map{ |dog| dog.trips }
    end
end
