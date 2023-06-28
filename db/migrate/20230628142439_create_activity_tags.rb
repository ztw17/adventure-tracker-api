class CreateActivityTags < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_tags do |t|
      t.string :tag_id
      t.string :activity_id

      t.timestamps
    end
  end
end
