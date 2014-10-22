class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :user_id, null: false
      t.text :url, null: false
      t.string :quatation

      t.timestamps
    end

    add_index :stars, :user_id
    add_index :stars, :url
  end
end
