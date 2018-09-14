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

ActiveRecord::Schema.define(version: 2018_09_14_014937) do

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.string "quantity"
    t.integer "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_materials_on_menu_id"
  end

  create_table "menu_tools", force: :cascade do |t|
    t.integer "menu_id"
    t.integer "tool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_menu_tools_on_menu_id"
    t.index ["tool_id"], name: "index_menu_tools_on_tool_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.integer "cooking_time"
    t.string "image_url"
    t.text "taste"
    t.text "hint1"
    t.text "hint2"
    t.text "hint3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "person_count"
  end

  create_table "recipes", force: :cascade do |t|
    t.text "content"
    t.integer "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_recipes_on_menu_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
