class User < ApplicationRecord
    has_many :itineraries

    #new
    has_secure_password

    validates :username, uniqueness: true
    validates :username, presence: true
end
