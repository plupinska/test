class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :board, array: true, default: Array.new(9) { Array.new(9, '') }
      t.string :winner, default: ''
      t.string :turn, default: 'X'
      t.string :valid_subgames, array: true, default: []
      t.timestamps
    end
  end
end
