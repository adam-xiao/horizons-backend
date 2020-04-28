class User < ApplicationRecord
    has_many :itineraries

    validates :username, uniqueness: true
end
