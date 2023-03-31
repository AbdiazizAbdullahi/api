class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :year_born

  has_many :reviews
  has_many :user_movies 
  has_many :movies, through: :user_movies
end
