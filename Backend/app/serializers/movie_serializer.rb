class MovieSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :year, :director
end
