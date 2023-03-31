class UserMovieSerializer < ActiveModel::Serializer
  attributes :id, :genre, :user_id, :movie_id

  belongs_to :movie
  belongs_to :user 
end
