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

ActiveRecord::Schema.define(version: 2019_02_25_005459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "callqueues", force: :cascade do |t|
    t.string "name", limit: 128
    t.string "musiconhold", limit: 128
    t.string "announce", limit: 128
    t.integer "timeout"
    t.boolean "monitor_join"
    t.string "monitor_format", limit: 128
    t.string "queue_youarenext", limit: 128
    t.string "queue_thereare", limit: 128
    t.string "queue_callswaiting", limit: 128
    t.string "queue_holdtime", limit: 128
    t.string "queue_minutes", limit: 128
    t.string "queue_seconds", limit: 128
    t.string "queue_lessthan", limit: 128
    t.string "queue_thankyou", limit: 128
    t.string "queue_reporthold", limit: 128
    t.integer "announce_frequency"
    t.integer "announce_round_seconds"
    t.string "announce_holdtime", limit: 128
    t.integer "retry"
    t.integer "wrapuptime"
    t.integer "maxlen"
    t.integer "servicelevel"
    t.string "strategy", limit: 128
    t.string "joinempty", limit: 128
    t.string "leavewhenempty", limit: 128
    t.boolean "eventmemberstatus"
    t.boolean "boolean"
    t.boolean "eventwhencalled"
    t.boolean "reportholdtime"
    t.integer "memberdelay"
    t.integer "weight"
    t.boolean "timeoutrestart"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "name", limit: 80
    t.string "accountcode", limit: 20
    t.string "amaflags", limit: 13
    t.string "callgroup", limit: 10
    t.string "callerid", limit: 80
    t.string "canreinvite", limit: 3, default: "yes"
    t.string "context", limit: 80
    t.string "defaultip", limit: 15
    t.string "dtmfmode", limit: 7
    t.string "fromuser", limit: 80
    t.string "fromdomain", limit: 80
    t.string "fullcontact", limit: 80
    t.string "host", limit: 31, default: "dynamic"
    t.string "insecure", limit: 4
    t.string "language", limit: 2
    t.string "mailbox", limit: 50
    t.string "md5secret", limit: 80
    t.string "nat", limit: 5, default: "no"
    t.string "deny", limit: 95
    t.string "permit", limit: 95
    t.string "mask", limit: 95
    t.string "pickupgroup", limit: 10
    t.string "port", limit: 5, default: ""
    t.string "qualify", limit: 3
    t.string "restrictcid", limit: 1
    t.string "rtptimeout", limit: 3
    t.string "rtpholdtimeout", limit: 3
    t.string "secret", limit: 80
    t.string "type", limit: 6, default: ""
    t.string "username", limit: 80
    t.string "disallow", limit: 100
    t.string "allow", limit: 100
    t.string "musiconhold", limit: 100
    t.integer "regseconds", default: 0
    t.string "ipaddr", limit: 15, default: "0"
    t.string "regexten", limit: 80
    t.string "cancallforward", limit: 3, default: "yes"
    t.string "setvar", limit: 100
    t.string "dbsecret", limit: 100
    t.string "inkeys", limit: 100
    t.string "outkey", limit: 100
    t.string "auth", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extensions", force: :cascade do |t|
    t.string "context", limit: 20, null: false
    t.string "exten", limit: 20, null: false
    t.integer "priority", default: 0
    t.string "app", limit: 20, null: false
    t.string "appdata", limit: 128, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.string "name"
    t.integer "status"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "voicemailboxes", force: :cascade do |t|
    t.string "customer_id", limit: 11, null: false
    t.string "context", limit: 50, default: "0"
    t.string "mailbox", limit: 11, null: false
    t.bigint "password", default: 0
    t.string "fullname", limit: 150, null: false
    t.string "email", limit: 50, null: false
    t.string "pager", limit: 50, default: ""
    t.string "tz", limit: 10, default: "central"
    t.string "attach", limit: 4, default: "yes"
    t.string "saycid", limit: 4, default: "yes"
    t.string "dialout", limit: 10, default: ""
    t.string "callback", limit: 10, default: ""
    t.string "review", limit: 4, default: "no"
    t.string "operator", limit: 4, default: "no"
    t.string "envelope", limit: 4, default: "no"
    t.string "sayduration", limit: 4, default: "no"
    t.integer "saydurationm", default: 1
    t.string "sendvoicemail", limit: 4, default: "no"
    t.string "remove", limit: 4, default: "no"
    t.integer "nextaftercmd", default: 0
    t.integer "forcename", default: 0
    t.integer "forcegreetings", default: 0
    t.string "hidefromdir", limit: 4, default: "yes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voicemailmessages", force: :cascade do |t|
    t.integer "msgnum", default: 0
    t.string "dir", limit: 80, default: ""
    t.string "context", limit: 80, default: ""
    t.string "macrocontext", limit: 80, default: ""
    t.string "callerid", limit: 40, default: ""
    t.string "origtime", limit: 40, default: ""
    t.string "duration", limit: 20, default: ""
    t.string "mailboxuser", limit: 80, default: ""
    t.string "mailboxcontext", limit: 80, default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
