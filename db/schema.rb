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

ActiveRecord::Schema.define(version: 20180305070646) do

  create_table "addcarts", force: :cascade do |t|
    t.string "image"
    t.text "feauters"
    t.text "product"
    t.string "price"
    t.string "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "price"
    t.text "description"
  end

  create_table "bags", force: :cascade do |t|
    t.decimal "quantity"
    t.decimal "total"
    t.integer "pice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pice_id"], name: "index_bags_on_pice_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "mobiles", force: :cascade do |t|
    t.text "phone"
    t.string "image"
    t.decimal "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.text "Mtype"
  end

  create_table "pens", force: :cascade do |t|
    t.text "phone"
    t.string "mtype"
    t.decimal "price"
    t.text "description"
    t.decimal "quantity"
    t.decimal "total"
    t.integer "pice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "tquantity"
    t.decimal "tprice"
    t.index ["pice_id"], name: "index_pens_on_pice_id"
  end

  create_table "pices", force: :cascade do |t|
    t.text "phone"
    t.string "mtype"
    t.decimal "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.decimal "price"
    t.decimal "total"
    t.integer "mobiles_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mobiles_id"], name: "index_ships_on_mobiles_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
