class ChangeDistanceOnActivitiesRedo < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :distance, :bigint, precision: 10, scale: 6
  end
end
