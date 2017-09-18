class CreateReview < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :reaction
      t.integer :rating
      t.references :chapter
      t.references :user
    end
  end
end
