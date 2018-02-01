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

ActiveRecord::Schema.define(version: 20180201143924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "artist_moods", force: :cascade do |t|
    t.bigint "artist_id"
    t.bigint "mood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artist_moods_on_artist_id"
    t.index ["mood_id"], name: "index_artist_moods_on_mood_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.hstore "photos", default: {}, null: false
  end

  create_table "entries", force: :cascade do |t|
    t.bigint "journal_id"
    t.boolean "public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.index ["journal_id"], name: "index_entries_on_journal_id"
  end

  create_table "journals", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_journals_on_user_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlist_moods", force: :cascade do |t|
    t.bigint "playlist_id"
    t.bigint "mood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mood_id"], name: "index_playlist_moods_on_mood_id"
    t.index ["playlist_id"], name: "index_playlist_moods_on_playlist_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "link"
    t.integer "score"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_playlists_on_artist_id"
  end

  create_table "quote_moods", force: :cascade do |t|
    t.bigint "quote_id"
    t.bigint "mood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mood_id"], name: "index_quote_moods_on_mood_id"
    t.index ["quote_id"], name: "index_quote_moods_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.text "content"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_quotes_on_artist_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "questions", array: true
  end

  create_table "tracks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_tracks_on_artist_id"
    t.index ["user_id"], name: "index_tracks_on_user_id"
  end

  create_table "user_moods", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "mood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mood_id"], name: "index_user_moods_on_mood_id"
    t.index ["user_id"], name: "index_user_moods_on_user_id"
  end

  create_table "user_tests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_user_tests_on_test_id"
    t.index ["user_id"], name: "index_user_tests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "display_name"
    t.string "access_token"
    t.string "refresh_token"
  end

  add_foreign_key "artist_moods", "artists"
  add_foreign_key "artist_moods", "moods"
  add_foreign_key "entries", "journals"
  add_foreign_key "journals", "users"
  add_foreign_key "playlist_moods", "moods"
  add_foreign_key "playlist_moods", "playlists"
  add_foreign_key "playlists", "artists"
  add_foreign_key "quote_moods", "moods"
  add_foreign_key "quote_moods", "quotes"
  add_foreign_key "quotes", "artists"
  add_foreign_key "tracks", "artists"
  add_foreign_key "tracks", "users"
  add_foreign_key "user_moods", "moods"
  add_foreign_key "user_moods", "users"
  add_foreign_key "user_tests", "tests"
  add_foreign_key "user_tests", "users"
end
