class AddPhotoToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :photo, :string
  end
end
