class AddFontToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :font, :string
  end
end
