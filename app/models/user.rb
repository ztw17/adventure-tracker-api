require 'bcrypt'

class User < ApplicationRecord
    has_many :activities
    has_secure_password
end
