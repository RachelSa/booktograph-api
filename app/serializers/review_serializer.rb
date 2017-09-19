class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :reaction
  belongs_to :chapter
  
end
