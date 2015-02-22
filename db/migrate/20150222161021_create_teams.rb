class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string		:team_name
    	t.string		:team_page
    	t.integer		:games_played
    	t.integer		:field_goals
    	t.integer		:field_goals_attempted
    	t.integer		:three_pointers
    	t.integer		:three_pointers_attempted
    	t.integer	 	:two_pointers
    	t.integer		:two_pointers_attempted
    	t.integer		:free_throws
    	t.integer		:free_throws_attempted
    	t.integer		:offensive_rebounds
    	t.integer		:defensive_rebounds
    	t.integer		:assists
    	t.integer		:steals
    	t.integer		:blocks
    	t.integer		:turnovers
    	t.integer		:personal_fouls

        t.timestamps
    end
  end
end
