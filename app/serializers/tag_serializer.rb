class TagSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :activities, include_nested_attributes: :false
end
