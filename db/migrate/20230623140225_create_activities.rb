class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :location
      t.text :trail, array: true, default: []
      t.bigint :distance
      t.bigint :elevation_gain
      t.date :date

      t.timestamps
    end
  end
end
