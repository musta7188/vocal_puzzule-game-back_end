class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :score, :default => 0
      t.string :password_diget
      t.string :password_confirmation

      t.timestamps
    end
  end
end
