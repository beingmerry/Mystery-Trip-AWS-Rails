class CreateTripDays < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_days do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :day, null: false, foreign_key: true
      t.string :review
      t.string :date
      t.string :weather_predicted

      t.timestamps
    end
  end
end
