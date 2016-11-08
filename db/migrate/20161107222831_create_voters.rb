class CreateVoters < ActiveRecord::Migration[5.0]
  def change
    create_table :voters do |t|
      t.integer :IDNUMBER
      t.string :NAME
      t.string :PRECINCT
      t.string :PARTY
      t.string :PARTY_ABBR
      t.string :SENATE
      t.string :CITY
      t.string :EV_SITE
      t.string :ACTIVITY_DATE

      t.timestamps
    end
  end
end
