class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :trail, :distance, :elevation_gain, :date, :notes
end
