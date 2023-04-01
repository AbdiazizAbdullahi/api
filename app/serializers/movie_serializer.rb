class MovieSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :category, :year, :director

  has_many :reviews
  has_many :user_movies
  has_many :users, through: :user_movies
end
