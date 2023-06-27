class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :location, :password, :created_at
  has_many :activities, include_nested_attributes: :false
end
