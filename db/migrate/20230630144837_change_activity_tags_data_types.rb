class ChangeActivityTagsDataTypes < ActiveRecord::Migration[7.0]
  def change
    change_column :activity_tags, :tag_id, 'bigint USING CAST(tag_id AS bigint)'
    change_column :activity_tags, :activity_id, 'bigint USING CAST(activity_id AS bigint)'
  end
end
