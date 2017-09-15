class User < ApplicationRecord
  has_many :book_reads
  has_many :books, through: :book_reads
  has_many :chapters, through: :books
  has_many :reviews

end
