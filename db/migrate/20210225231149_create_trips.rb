class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.date :date
      t.string :location
      t.time :time

      t.timestamps
    end
  end
end
