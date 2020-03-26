class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :word
      t.string :image1
      t.string :image2
      t.integer :score

      t.timestamps
    end
  end
end
