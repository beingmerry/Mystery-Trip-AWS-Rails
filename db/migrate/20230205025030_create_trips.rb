class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :destination
      t.string :start_date
      t.string :end_date
      t.string :trip_review
      t.timestamps
    end
  end
end
