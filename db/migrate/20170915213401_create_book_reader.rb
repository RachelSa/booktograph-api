class CreateBookReader < ActiveRecord::Migration[5.1]
  def change
    create_table :book_reads do |t|
      t.references :book
      t.references :user
    end
  end
end
