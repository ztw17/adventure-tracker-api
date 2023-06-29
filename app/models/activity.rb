class Activity < ApplicationRecord
    belongs_to :user
    has_many :activity_tags
    has_many :tags, through: :activity_tags
end
