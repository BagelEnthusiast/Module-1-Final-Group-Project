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

ActiveRecord::Schema.define(version: 2019_04_16_161429) do

  create_table "battles", force: :cascade do |t|
    t.integer "party_member_id"
    t.integer "enemy_id"
  end

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.integer "temp_health"
    t.integer "perm_health"
    t.integer "speed"
    t.integer "attack"
    t.integer "defense"
  end

  create_table "party_members", force: :cascade do |t|
    t.string "name"
    t.integer "temp_health"
    t.integer "perm_health"
    t.integer "speed"
    t.integer "attack"
    t.integer "defense"
  end

end
