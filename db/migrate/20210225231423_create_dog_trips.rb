class CreateDogTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_trips do |t|
      t.belongs_to :dog, null: false, foreign_key: true
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
