class TagSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name

  has_many :skills
end
