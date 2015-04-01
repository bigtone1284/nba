class AddFTtoTeams < ActiveRecord::Migration
  def change
  	add_column :teams, :free_throw_percentage, :decimal
  end
end
