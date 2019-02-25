class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :age, :integer
    add_column :users, :location, :string
    add_column :users, :photo, :string
    add_column :users, :description, :text
  end
end
