class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.time :opening_time
      t.time :closing_time
      t.integer :day_of_week
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
