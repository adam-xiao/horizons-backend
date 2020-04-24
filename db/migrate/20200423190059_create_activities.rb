class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.integer :itinerary_id
      t.string :name
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
