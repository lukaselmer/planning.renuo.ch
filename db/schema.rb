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

ActiveRecord::Schema.define(:version => 20121015144210) do

  create_table "milestones", :force => true do |t|
    t.string   "name",       :null => false
    t.date     "when",       :null => false
    t.integer  "hours",      :null => false
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "planned_times", :force => true do |t|
    t.decimal  "hours",          :precision => 4, :scale => 2, :null => false
    t.date     "when",                                         :null => false
    t.integer  "user_id",                                      :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.decimal  "achieved_hours", :precision => 4, :scale => 2
  end

  add_index "planned_times", ["user_id"], :name => "index_planned_times_on_user_id"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sys_logs", :force => true do |t|
    t.integer "userid",                   :default => 0,  :null => false
    t.integer "action",     :limit => 1,  :default => 0,  :null => false
    t.integer "recuid",                   :default => 0,  :null => false
    t.string  "tablename",                :default => ""
    t.integer "recpid",                   :default => 0,  :null => false
    t.integer "error",      :limit => 1,  :default => 0,  :null => false
    t.text    "details",                                  :null => false
    t.integer "tstamp",                   :default => 0,  :null => false
    t.integer "typex",      :limit => 1,  :default => 0,  :null => false
    t.integer "details_nr", :limit => 1,  :default => 0,  :null => false
    t.string  "ip",         :limit => 39
    t.string  "log_data",                 :default => ""
    t.integer "event_pid",                :default => -1, :null => false
    t.integer "workspace",                :default => 0,  :null => false
    t.string  "newid",      :limit => 20
  end

  add_index "sys_logs", ["recuid", "id"], :name => "recuidIdx"
  add_index "sys_logs", ["userid", "event_pid"], :name => "event"

  create_table "users", :force => true do |t|
    t.string   "name",                                     :null => false
    t.decimal  "overhead",   :precision => 4, :scale => 2, :null => false
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

end
