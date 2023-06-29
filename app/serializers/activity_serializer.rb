class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :trail, :distance, :elevation_gain, :date, :notes
  belongs_to :user, include_nested_attributes: :false
  has_many :tags, include_nested_attributes: :false
end
