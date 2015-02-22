class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string 			:name
    	t.integer			:games
    	t.integer			:games_started
    	t.integer			:minutes
    	t.integer			:three_pointers
    	t.integer			:three_pointers_attempted
    	t.integer			:two_pointers
    	t.integer			:two_pointers_attempted
    	t.integer			:free_throws
    	t.integer			:free_throws_attempted
    	t.integer			:offensive_rebounds
    	t.integer			:defensive_rebounds
    	t.integer			:assists
    	t.integer			:steals
    	t.integer			:blocks
    	t.integer			:turnovers
    	t.integer			:personal_fouls
    	t.references	:team

    	t.timestamps
    end
  end
end
