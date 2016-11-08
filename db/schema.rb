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
#IDNUMBER,NAME,PRECINCT,PARTY,PARTY_ABBR,CONGRESS,ASSEMBLY,SENATE,COMMISSION,EDUCATION,REGENT,SCHOOL,CITY,WARD,TOWNSHIP,STATUS,EV_SITE,ELECTION CODE,ACTIVITY_DATE
ActiveRecord::Schema.define(version: 20161107225100) do

  create_table "voters", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "idnumber"
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "party"
    t.string   "party_abbr"
    t.string   "precinct"
    t.string   "ev_site"
    t.string   "activity_date"
    t.string   "senate"
  end

end
