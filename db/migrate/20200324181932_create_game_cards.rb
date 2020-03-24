class CreateGameCards < ActiveRecord::Migration[6.0]
  def change
    create_table :game_cards do |t|
      t.references :card, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
