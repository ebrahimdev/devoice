# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_30_144307) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "business_entities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "type"
    t.jsonb "metadata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transformation_rules", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "source_type"
    t.string "target_type"
    t.jsonb "rules"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "view_entities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "type"
    t.jsonb "metadata"
    t.bigint "business_entity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_entity_id"], name: "index_view_entities_on_business_entity_id"
  end

  add_foreign_key "view_entities", "business_entities"
end
