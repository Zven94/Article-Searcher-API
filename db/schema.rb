ActiveRecord::Schema[7.1].define(version: 2024_01_06_225556) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searched_terms", force: :cascade do |t|
    t.string "term"
    t.integer "searched_counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
