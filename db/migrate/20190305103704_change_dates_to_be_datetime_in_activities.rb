class ChangeDatesToBeDatetimeInActivities < ActiveRecord::Migration[5.2]
  def change
    change_column :activities, :start_date, :datetime
    change_column :activities, :end_date, :datetime
    change_column :activities, :activation_date, :datetime
  end
end
