class Movie < ApplicationRecord
    has_many :reviews
    has_many :users, through: :user_movies 
end
