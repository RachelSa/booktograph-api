class CreateBookAuthor < ActiveRecord::Migration[5.1]
  def change
    create_table :book_authors do |t|
      t.references :book
      t.references :author
    end
  end
end
