class AddColumnToActivity < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :category, foreign_key: true
  end
end
