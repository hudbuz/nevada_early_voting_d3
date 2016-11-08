class FixSenate < ActiveRecord::Migration[5.0]
  def change
    remove_column :voters, :SENATE
    add_column :voters, :senate, :string
  end
end
