Class ReviewSerializer < ActiveModel::Serializers
  attributes  :id, :comment, :rating, :user_id, :movie_id
end
