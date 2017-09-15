class Book < ApplicationRecord
  has_many :book_reads
  has_many :users, :through :book_reads
  has_many :book_authors
  has_many :authors, :through :book_authors
  has_many :chapters
  has_many :reviews, :through :chapters


end
