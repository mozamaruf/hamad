class CreateStuffs < ActiveRecord::Migration[5.1]
  def change
    create_table :stuffs do |t|
      t.string :name
      t.integer :price
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
