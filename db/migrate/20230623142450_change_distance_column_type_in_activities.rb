class ChangeDistanceColumnTypeInActivities < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :distance, :decimal, precision: 10, scale: 2
  end
end
