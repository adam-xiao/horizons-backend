class CreateItineraries < ActiveRecord::Migration[6.0]
  def change
    create_table :itineraries do |t|
      t.integer :user_id
      t.string :name
      t.date :start
      t.date :end
      t.string :description
      t.boolean :archived

      t.timestamps
    end
  end
end
