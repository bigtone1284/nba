class AddReboundsToPlayersTable < ActiveRecord::Migration
  def change
  	add_column :players, :rebounds, :integer
  end
end
