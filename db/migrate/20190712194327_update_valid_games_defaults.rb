class UpdateValidGamesDefaults < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:games, :valid_subgames, from: [], to: [0,1,2,3,4,5,6,7,8,9])
  end
end
