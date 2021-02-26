class TripSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :time
end
