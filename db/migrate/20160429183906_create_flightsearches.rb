class CreateFlightsearches < ActiveRecord::Migration
  def change
    create_table :flightsearches do |t|
      t.string :departure_date
      t.string :arrival_date
      t.string :airport

      t.timestamps null: false
    end
  end
end
