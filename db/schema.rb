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

ActiveRecord::Schema.define(version: 2020_05_07_005421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.integer "level", default: 1
    t.integer "experience_points", default: 0
    t.integer "hit_points"
    t.integer "temp_hit_points"
    t.integer "hit_dice"
    t.integer "speed"
    t.integer "initiative"
    t.boolean "inspiration", default: false
    t.integer "weight"
    t.integer "age"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "proficiency_bonus", default: 2
    t.text "skills"
    t.text "class_features"
    t.text "race_traits"
    t.text "languages"
  end

end
