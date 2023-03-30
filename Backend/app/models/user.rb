class User < ApplicationRecord
    has_secure_password
  
    has_many :reviews
    has_many :movies, through: :user_movies
    
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
  end
  