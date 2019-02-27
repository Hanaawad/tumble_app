class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
