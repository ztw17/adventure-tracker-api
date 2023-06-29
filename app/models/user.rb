require 'bcrypt'

class User < ApplicationRecord
    has_many :activities
    has_many :activity_tags, through: :activities
    has_many :tags, through: :activity_tags
    has_secure_password
end
