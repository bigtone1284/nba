class AddFieldGoalsPercentageToTeams < ActiveRecord::Migration
  def change
  	remove_column :teams, :field_goal_percentage, :decimal
  	add_column :teams, :field_goal_percentage, :decimal
  end
end
