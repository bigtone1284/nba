class AddStuffToTeams < ActiveRecord::Migration
  def change
  	add_columns :teams, :rebounds, :integer
  	add_columns :teams, :points, :integer
  	add_columns :teams, :two_pointer_percentage, :decimal
  	add_columns :teams, :three_pointer_percentage;

  end
end
