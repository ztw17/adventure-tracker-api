class ActivityTagSerializer < ActiveModel::Serializer
  attributes :id, :tag_id, :activity_id
  belongs_to :activity, include_nested_attributes: :false
  belongs_to :tag, include_nested_attributes: :false
end
