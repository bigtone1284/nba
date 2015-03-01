class AddTeamAbbrevToTeamsTable < ActiveRecord::Migration
  def change
  	add_column :teams, :team_abbrev, :text
  end
end
