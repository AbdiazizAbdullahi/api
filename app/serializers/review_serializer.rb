class ReviewSerializer < ActiveModel::Serializer
  attributes  :id, :comment, :rating, :user_id, :movie_id
end
