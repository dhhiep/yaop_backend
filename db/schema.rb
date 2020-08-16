# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_16_070829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "youtube_playlists", force: :cascade do |t|
    t.integer "user_id"
    t.string "yid"
    t.string "name"
    t.string "url"
    t.string "thumbnail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_youtube_playlists_on_user_id"
    t.index ["yid"], name: "index_youtube_playlists_on_yid"
  end

  create_table "youtube_videos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "playlist_id"
    t.string "yid"
    t.string "name"
    t.string "channel_name"
    t.string "time"
    t.string "url"
    t.string "thumbnail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["playlist_id"], name: "index_youtube_videos_on_playlist_id"
    t.index ["user_id"], name: "index_youtube_videos_on_user_id"
    t.index ["yid"], name: "index_youtube_videos_on_yid"
  end

end
