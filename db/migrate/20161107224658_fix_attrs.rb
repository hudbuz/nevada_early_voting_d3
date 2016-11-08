class FixAttrs < ActiveRecord::Migration[5.0]
  def change
    remove_column :voters, :IDNUMBER
    remove_column :voters, :NAME
    remove_column :voters, :CITY
    remove_column :voters, :STATE
    remove_column :voters, :PARTY
    remove_column :voters, :PARTY_ABBR
    remove_column :voters, :PRECINCT
    remove_column :voters, :EV_SITE
    remove_column :voters, :ACTIVITY_DATE

    add_column :voters, :idnumber, :integer
    add_column :voters, :name, :string
    add_column :voters, :city, :string
    add_column :voters, :state, :string
    add_column :voters, :party, :string
    add_column :voters, :party_abbr, :string
    add_column :voters, :precinct, :string
    add_column :voters, :ev_site, :string
    add_column :voters, :activity_date, :string

  end
end
