class FixTeamsPointers < ActiveRecord::Migration
  def change
  	remove_column :teams, :two_pointer_percentage, :decimal
  	remove_column :teams, :three_pointer_percentage, :decimal
  	add_column :teams, :two_point_percentage, :decimal
  	add_column :teams, :three_point_percentage, :decimal
  end
end
