class AddStuffToTeams < ActiveRecord::Migration
  def change
  	add_column :teams, :rebounds, :integer
  	add_column :teams, :points, :integer
  	add_column :teams, :two_pointer_percentage, :decimal
  	add_column :teams, :three_pointer_percentage, :decimal

  end
end
