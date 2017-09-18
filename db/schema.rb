# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170915213401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
  end

  create_table "book_authors", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "author_id"
    t.index ["author_id"], name: "index_book_authors_on_author_id"
    t.index ["book_id"], name: "index_book_authors_on_book_id"
  end

  create_table "book_reads", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "user_id"
    t.index ["book_id"], name: "index_book_reads_on_book_id"
    t.index ["user_id"], name: "index_book_reads_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.text "teaser"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.string "number"
    t.bigint "book_id"
    t.index ["book_id"], name: "index_chapters_on_book_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "reaction"
    t.integer "rating"
    t.bigint "chapter_id"
    t.index ["chapter_id"], name: "index_reviews_on_chapter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "image"
  end

end
