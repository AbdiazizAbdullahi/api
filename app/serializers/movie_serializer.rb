Class MovieSerializer < ActiveModel::Serializers
  attributes :id, :image, :title, :year, :director
end
