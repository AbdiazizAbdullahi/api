class MovieSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :year, :director

  has_many :reviews
  has_many :user_movies
  has_many :users, through: :user_movies
end
