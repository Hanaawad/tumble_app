class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.text :description
      t.integer :price
      t.string :location
      t.string :name
      t.date :start_date
      t.date :end_date
      t.date :activation_date
      t.integer :min_limit
      t.integer :max_limit

      t.timestamps
    end
  end
end
