# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120528173546) do

  create_table "ad_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "advertisements", :force => true do |t|
    t.integer  "user_id"
    t.integer  "ad_type_id"
    t.integer  "category_of_ads_id"
    t.string   "title"
    t.text     "description"
    t.boolean  "sex"
    t.string   "phone"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "advertisements", ["ad_type_id"], :name => "index_advertisements_on_ad_type_id"
  add_index "advertisements", ["category_of_ads_id"], :name => "index_advertisements_on_category_of_ads_id"
  add_index "advertisements", ["user_id"], :name => "index_advertisements_on_user_id"

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "articles", ["category_id"], :name => "index_articles_on_category_id"
  add_index "articles", ["user_id"], :name => "index_articles_on_user_id"

  create_table "breeds", :force => true do |t|
    t.string   "name"
    t.string   "name_en"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "category_of_ads", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.string   "name_en"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dogs", :force => true do |t|
    t.string   "name"
    t.string   "en_name"
    t.integer  "user_id"
    t.integer  "references_id"
    t.integer  "traning_id"
    t.string   "estimate"
    t.boolean  "sex"
    t.integer  "colors_id"
    t.date     "birthday"
    t.string   "export_number"
    t.string   "stamp_number"
    t.integer  "chip_number"
    t.boolean  "in_club"
    t.boolean  "breed_allow"
    t.text     "description"
    t.text     "dysplasia"
    t.integer  "rank_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pedigrees", :force => true do |t|
    t.string   "name"
    t.string   "name_en"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photo_albums", :force => true do |t|
    t.integer  "adverisement_id"
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "photo_albums", ["adverisement_id"], :name => "index_photo_albums_on_adverisement_id"
  add_index "photo_albums", ["user_id"], :name => "index_photo_albums_on_user_id"

  create_table "photos", :force => true do |t|
    t.integer  "photo_album_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "photos", ["photo_album_id"], :name => "index_photos_on_photo_album_id"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "ranks", :force => true do |t|
    t.string   "name"
    t.string   "en_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rich_rich_files", :force => true do |t|
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        :default => "file"
  end

  create_table "tranings", :force => true do |t|
    t.string   "name"
    t.string   "name_en"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.boolean  "admin",                  :default => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
