class UserMovie < ApplicationRecord
    belongs_to :user
    belongs_to :movie

    validates :genre, presence: true
end
