class AddTotalsToPlayers < ActiveRecord::Migration
  def change
  	add_column :players, :field_goals, :integer
  	add_column :players, :field_goals_attempted, :integer
  	add_column :players, :field_goal_percentage, :decimal
  	add_column :players, :three_point_percentage, :decimal
  	add_column :players, :two_point_percentage, :decimal
  	add_column :players, :free_throw_percentage, :decimal
  	add_column :players, :effective_fg_percentage, :decimal
  	add_column :players, :points, :integer
  end
end
