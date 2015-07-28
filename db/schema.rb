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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150728054953) do

  create_table "articles", force: :cascade do |t|
    t.string   "code",        limit: 100,                    null: false
    t.string   "category_id", limit: 32,                     null: false
    t.text     "title",       limit: 65535,                  null: false
    t.text     "image",       limit: 65535
    t.text     "descr",       limit: 65535
    t.text     "content",     limit: 65535
    t.text     "tags",        limit: 65535
    t.integer  "browse",      limit: 4,          default: 0
    t.datetime "publish",                                    null: false
    t.string   "edituser",    limit: 128
    t.datetime "display"
    t.string   "slogan",      limit: 255
    t.text     "cards",       limit: 4294967295
  end

  add_index "articles", ["code"], name: "code", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "code",       limit: 32,         null: false
    t.text     "title",      limit: 65535,      null: false
    t.text     "subtype",    limit: 65535
    t.text     "fields",     limit: 4294967295
    t.string   "edituser",   limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at"
  end

  add_index "categories", ["code"], name: "code", unique: true, using: :btree

  create_table "imagedirs", force: :cascade do |t|
    t.text     "path",       limit: 65535,             null: false
    t.text     "link",       limit: 65535
    t.integer  "size",       limit: 4,     default: 0, null: false
    t.datetime "created_at",                           null: false
  end

  create_table "imagefiles", primary_key: "code", force: :cascade do |t|
    t.text     "path",     limit: 65535,              null: false
    t.text     "type",     limit: 65535
    t.string   "title",    limit: 32,    default: "", null: false
    t.text     "descr",    limit: 65535
    t.string   "folder",   limit: 32
    t.integer  "width",    limit: 4
    t.integer  "height",   limit: 4
    t.integer  "size",     limit: 4,     default: 0
    t.string   "edituser", limit: 128
    t.datetime "upload",                              null: false
  end

  create_table "jsonfiles", primary_key: "count", force: :cascade do |t|
    t.string   "code",     limit: 100,   null: false
    t.text     "title",    limit: 65535, null: false
    t.string   "category", limit: 32,    null: false
    t.text     "filename", limit: 65535, null: false
    t.datetime "first",                  null: false
    t.datetime "last"
    t.datetime "publish"
  end

  add_index "jsonfiles", ["code"], name: "code", unique: true, using: :btree

  create_table "kwarticleshares", force: :cascade do |t|
    t.integer  "article_count",         limit: 4,                   null: false
    t.string   "article_share_to",      limit: 128,                 null: false
    t.string   "articleshareuser_name", limit: 255,                 null: false
    t.boolean  "articleshare_read",     limit: 1,   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kwcaseinfos", force: :cascade do |t|
    t.integer  "user_id",            limit: 4,     null: false
    t.string   "sup_member_code",    limit: 20,    null: false
    t.string   "ser_member_code",    limit: 20,    null: false
    t.string   "id_number",          limit: 20
    t.string   "name",               limit: 70
    t.string   "case_avatar",        limit: 255
    t.string   "gender",             limit: 2
    t.date     "birthday"
    t.string   "mail_address",       limit: 100
    t.string   "home_address",       limit: 100
    t.string   "now_status",         limit: 20
    t.string   "benefits",           limit: 20
    t.text     "life",               limit: 65535
    t.string   "service_type",       limit: 102
    t.text     "house_desc",         limit: 65535
    t.string   "Resource1",          limit: 255
    t.string   "Resource2",          limit: 255
    t.string   "Resource3",          limit: 255
    t.string   "Resource4",          limit: 255
    t.string   "Resource5",          limit: 255
    t.string   "Resource6",          limit: 255
    t.string   "Disabled_Paper",     limit: 20
    t.string   "disabled",           limit: 40
    t.string   "Disease",            limit: 40
    t.string   "Hardware",           limit: 40
    t.string   "Special_Mode",       limit: 40
    t.string   "Income_Type",        limit: 105
    t.string   "Ability_Lv",         limit: 102
    t.string   "pension_type",       limit: 102
    t.string   "Character_Type",     limit: 102
    t.string   "Disabled_Word",      limit: 102
    t.string   "Disabled_Lv",        limit: 102
    t.float    "ADL_Number",         limit: 24
    t.float    "IADL_Number",        limit: 24
    t.string   "Disabled_Type",      limit: 102
    t.string   "OverTime",           limit: 1
    t.string   "System",             limit: 5
    t.text     "Work_Notice",        limit: 65535
    t.text     "Service_Notice",     limit: 65535
    t.text     "Estimate_Total",     limit: 65535
    t.text     "Estimate_Important", limit: 65535
    t.text     "Service_Suggest",    limit: 65535
    t.float    "Systolic",           limit: 24
    t.float    "Diastolic",          limit: 24
    t.float    "Heart_Thump",        limit: 24
    t.float    "Respire",            limit: 24
    t.float    "Tall",               limit: 24
    t.float    "Weight",             limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kwcaseinfos", ["id_number"], name: "parent_id", using: :btree
  add_index "kwcaseinfos", ["id_number"], name: "parent_id_2", unique: true, using: :btree

  create_table "kwhotkws", force: :cascade do |t|
    t.string   "kwtag",         limit: 255, null: false
    t.integer  "kwhotkw_times", limit: 4,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kwhotkws", ["id"], name: "kwhotkwAuto", unique: true, using: :btree

  create_table "kwincomexs", force: :cascade do |t|
    t.string "name", limit: 15, null: false
  end

  add_index "kwincomexs", ["id"], name: "id", unique: true, using: :btree

  create_table "kwmissedrecs", force: :cascade do |t|
    t.string   "kwtag",      limit: 255,   null: false
    t.text     "kwusers",    limit: 65535, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kwmissedrecs", ["id"], name: "kwmissedrecAuto", unique: true, using: :btree

  create_table "kwmonth", force: :cascade do |t|
    t.string "name", limit: 3, null: false
  end

  add_index "kwmonth", ["id"], name: "id", unique: true, using: :btree

  create_table "kwpositiverecs", force: :cascade do |t|
    t.string   "kwtag",         limit: 255,   null: false
    t.string   "articles_code", limit: 255,   null: false
    t.text     "kwusers",       limit: 65535, null: false
    t.integer  "article_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kwrelatelinkcate", primary_key: "relatelinkcateAuto", force: :cascade do |t|
    t.string "relatelinkcateName", limit: 128, null: false
    t.string "relatelinkcateIcon", limit: 128, null: false
  end

  create_table "kwtraces", primary_key: "traceAuto", force: :cascade do |t|
    t.integer "publish_new_count", limit: 4,                 null: false
    t.integer "userAuto",          limit: 4,                 null: false
    t.integer "kwcase_id",         limit: 4,                 null: false
    t.date    "traceDate"
    t.time    "traceTime"
    t.boolean "traceRead",         limit: 1, default: false
  end

  add_index "kwtraces", ["traceAuto"], name: "traceAuto", unique: true, using: :btree

  create_table "kwuserkwlogs", force: :cascade do |t|
    t.string   "tags",       limit: 255, null: false
    t.string   "kwusername", limit: 255, null: false
    t.datetime "created_at",             null: false
    t.integer  "user_id",    limit: 4
    t.datetime "updated_at"
  end

  add_index "kwuserkwlogs", ["id"], name: "kwuserkwlogAuto", unique: true, using: :btree

  create_table "kwvisits", force: :cascade do |t|
    t.string   "article_code", limit: 255, null: false
    t.integer  "user_id",      limit: 4,   null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at"
    t.integer  "article_id",   limit: 4
  end

  create_table "published_bk", primary_key: "count", force: :cascade do |t|
    t.string   "code",     limit: 100,               null: false
    t.string   "category", limit: 32,                null: false
    t.text     "title",    limit: 65535,             null: false
    t.text     "image",    limit: 65535
    t.text     "descr",    limit: 65535
    t.text     "content",  limit: 65535
    t.text     "tags",     limit: 65535
    t.text     "path",     limit: 65535
    t.integer  "browse",   limit: 4,     default: 0
    t.datetime "publish",                            null: false
    t.string   "edituser", limit: 128
    t.datetime "display"
    t.string   "slogan",   limit: 255
    t.text     "cards",    limit: 65535
  end

  add_index "published_bk", ["code"], name: "code", unique: true, using: :btree

  create_table "teams", force: :cascade do |t|
    t.string "name",         limit: 50
    t.string "nickname",     limit: 50
    t.string "department",   limit: 50
    t.text   "description",  limit: 65535
    t.string "english_name", limit: 50
    t.string "pic_name",     limit: 50
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 128
    t.integer  "sex",                    limit: 1
    t.string   "email",                  limit: 128
    t.string   "mobile",                 limit: 11
    t.string   "fb_uid",                 limit: 128,   default: "carebestdefault"
    t.string   "fb_token",               limit: 255,   default: "carebestdefault"
    t.string   "fb_email",               limit: 128
    t.string   "wb_uid",                 limit: 128
    t.string   "qq_uid",                 limit: 128
    t.string   "userPassword",           limit: 128,   default: "00000000"
    t.string   "fullname",               limit: 128,                               null: false
    t.string   "province",               limit: 128
    t.string   "city",                   limit: 128
    t.text     "bio",                    limit: 65535
    t.string   "avatar",                 limit: 255
    t.datetime "user_join_time",                                                   null: false
    t.boolean  "active",                 limit: 1
    t.integer  "role",                   limit: 1
    t.string   "sup_member_code",        limit: 50
    t.string   "encrypted_password",     limit: 255,   default: "",                null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,                 null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "password_salt",          limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["email"], name: "userEmail", unique: true, using: :btree
  add_index "users", ["fb_email"], name: "userFbEmail", unique: true, using: :btree
  add_index "users", ["fb_uid"], name: "userFbUID", unique: true, using: :btree
  add_index "users", ["fullname"], name: "acc_nick", using: :btree
  add_index "users", ["id"], name: "userAuto", unique: true, using: :btree
  add_index "users", ["name"], name: "acc_id", unique: true, using: :btree
  add_index "users", ["name"], name: "userName", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["sup_member_code"], name: "Sup_Member_Code", unique: true, using: :btree

end
