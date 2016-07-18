class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :numserie
      t.integer :tamrueda
      t.text :desc
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
