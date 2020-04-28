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

ActiveRecord::Schema.define(version: 2020_04_20_211657) do

  create_table "characters", force: :cascade do |t|
    t.string "player_name"
    t.string "name"
    t.string "background"
    t.string "character_class"
    t.string "alignment"
    t.string "ideals"
    t.string "personality_traits"
    t.string "bonds"
    t.string "flaws"
    t.string "race"
    t.string "eyes"
    t.string "hair"
    t.string "skin"
    t.text "backstory"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
