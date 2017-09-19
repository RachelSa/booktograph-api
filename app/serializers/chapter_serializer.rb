class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :title, :number, :book_id
  belongs_to :book
end
